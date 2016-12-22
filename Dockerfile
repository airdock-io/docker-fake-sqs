# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Fake SQS image based on airdock/rvm
# TO_BUILD:       docker build --rm -t airdock/fake-sqs .
# SOURCE:         https://github.com/airdock-io/docker-fake-sqs

FROM airdock/rvm:latest
MAINTAINER Jerome Guibert <jguibert@gmail.com>

RUN  mkdir -p /opt/fake-sqs && cd /opt/fake-sqs && \
  mkdir -p /srv/fake-sqs && \
  rvm ruby-2.3 do gem install fake_sqs --no-ri --no-rdoc && \
  /root/post-install

EXPOSE 4568

CMD ["rvm", "ruby-2.3", "do", "fake_sqs", "--database", "/srv/fake-sqs/database.yml"]
