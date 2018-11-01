.PHONY: help image clean
DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  image  Build the script-seed:latest Docker image."
	@echo "  test   Run the test suite inside a Docker container."
	@echo "  shell  Open a shell inside the Docker container for manual testing."
	@echo "  clean  Remove the Docker image."

image:
	docker build -t script-seed:latest ${DIR}

test: image
	docker run --rm -v "${DIR}":/root/script-seed script-seed:latest /root/script-seed/test.sh

shell: image
	docker run --rm -it -v "${DIR}":/root/script-seed script-seed:latest /bin/bash

clean:
	docker rmi script-seed:latest

