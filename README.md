# Fake SQS [![](https://images.microbadger.com/badges/image/airdock/fake-sqs:latest.svg)](https://microbadger.com/images/airdock/fake-sqs:latest "Get your own image badge on microbadger.com")

Docker Image for [Fake SQS](https://github.com/iain/fake_sqs) based on airdock/rvm:latest

Purpose of this image is:

- install [Fake SQS](https://github.com/iain/fake_sqs)
- based on [airdock/rvm:latest](https://github.com/airdock-io/docker-rvm)


> Name: airdock/fake-sqs


# Usage

You should have already install [Docker](https://www.docker.com/).

Execute:

		docker run -d -p 4568:4568 --name fake-sqs airdock/fake-sqs

Note:
- Data file are localized under /srv/fake-sqs

Read https://github.com/iain/fake_sqs for more information about 'fake sqs'.

# Change Log

## 2012/12/21
- install rvm and ruby (newer version is needed for fake-sqs)

## before

- add Fake SQS
- install ruby-full
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
