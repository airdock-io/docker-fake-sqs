# Fake SQS [![](https://images.microbadger.com/badges/image/airdock/fake-sqs:latest.svg)](https://microbadger.com/images/airdock/fake-sqs:latest "Get your own image badge on microbadger.com")

> This project is no longer actively maintained.
>
> Back in 2017, few open source project provide docker image, etc and our jobs had a real nice goal. Now (2023), all open source community is mature, provides tools and images more than we needs. Thanks to all members for their time and effort.

Docker Image for [Fake SQS](https://github.com/iain/fake_sqs) based on airdock/rvm:latest

Purpose of this image is:

- install [Fake SQS](https://github.com/iain/fake_sqs)
- run with ruby:ruby user account
- based on [airdock/rvm:latest](https://github.com/airdock-io/docker-rvm)


> Name: airdock/fake-sqs

# Tag

* latest, 0.3.1: fake SQS 0.3.1 [![](https://images.microbadger.com/badges/image/airdock/fake-sqs:latest.svg)](https://microbadger.com/images/airdock/fake-sqs:latest "Get your own image badge on microbadger.com")
* 0.3.0: fake SQS 0.3.0 [![](https://images.microbadger.com/badges/image/airdock/fake-sqs:0.3.0.svg)](https://microbadger.com/images/airdock/fake-sqs:0.3.0 "Get your own image badge on microbadger.com")
* 0.2.0: fake SQS 0.2.0 [![](https://images.microbadger.com/badges/image/airdock/fake-sqs:0.2.0.svg)](https://microbadger.com/images/airdock/fake-sqs:0.2.0 "Get your own image badge on microbadger.com")
* 0.1.0: fake SQS 0.1.0 [![](https://images.microbadger.com/badges/image/airdock/fake-sqs:0.1.0.svg)](https://microbadger.com/images/airdock/fake-sqs:0.1.0 "Get your own image badge on microbadger.com")


# Usage

You should have already install [Docker](https://www.docker.com/).

Launch as service:

```
		docker run -d -p 4568:4568 --name fake-sqs airdock/fake-sqs
```
This instance listen on port 4468 and persist data under /srv/ruby/fake-sqs

You could mount a volume on /srv/ruby/fake-sqs in order to store/load data.
```
   docker run -v /some/fake/sqs:/srv/ruby/fake-sqs:rw  -d -p 4568:4568 --name fake-sqs airdock/fake-sqs
```
Read https://github.com/iain/fake_sqs for more information about 'fake sqs'.

# Change Log

## latest, 0.3.1, 0.3.0

- install fake-sqs as ruby user
- based on airdock/rvm
- MIT license

## 0.2.0, 0.1.0

- Fix Fake SQS dependency [mustermann](http://www.sinatrarb.com/mustermann/) required ruby >= 2.2
- add Fake SQS
- install ruby-full
- based on airdock/base
- run as root user
- MIT license


# Build

- Install "make" utility, and execute: `make build`
- Or execute: 'docker build -t airdock/fake-sqs:latest --rm .'

See [Docker Project Tree](https://github.com/airdock-io/docker-base/wiki/Docker-Project-Tree) for more details.


# MIT License

```
The MIT License (MIT)

Copyright (c) 2015 Airdock.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
