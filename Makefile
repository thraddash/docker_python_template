# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

CURDIR = $(shell pwd)

DOCKER_IMAGE = $(shell basename $(CURDIR))

help: ## This help.

	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

build: ## build python 3.7 docker image, current directory is the name of the tag
	docker build -t $(DOCKER_IMAGE) -f dockerfiles/Dockerfile .
run: ## start container, mount source code /workdir into container, create .venv directory for virutal env packages
	docker run -v $(CURDIR):/workdir -it $(DOCKER_IMAGE)
echo:
	echo $(DOCKER_IMAGE)

