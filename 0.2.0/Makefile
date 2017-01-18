NAME = airdock/fake-sqs
VERSION = dev-0.2.0
IMAGE=$(NAME):$(VERSION)

.PHONY: all clean build rebuild tag_latest debug run

all: build

clean:
	@CID=$(shell docker ps -a | awk '{ print $$1 " " $$2 }' | grep $(NAME) | awk '{ print $$1 }'); if [ ! -z "$$CID" ]; then echo "Removing container which reference $(NAME)"; for container in $(CID); do docker rm -f $$container; done; fi;
	@if docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then docker rmi -f $(NAME):$(VERSION); fi
	@if docker images $(NAME) | awk '{ print $$2 }' | grep -q -F latest; then docker rmi -f $(NAME):latest; fi

build:
	docker build -t ${IMAGE} --rm .

rebuild: clean
		docker build --no-cache -t ${IMAGE}

tag_latest:
	@docker tag ${IMAGE} ${NAME}:latest

debug:
	docker run -t -i --rm  $(NAME):$(VERSION) /bin/bash -l

run:
	@echo "IPAddress =" $$(docker inspect --format '{{.NetworkSettings.IPAddress}}' $$(docker run -d -p 4568:4568 --name fake-sqs $(NAME):$(VERSION)))
