.PHONY: help image test shell clean
DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  help   Print this help message."
	@echo "  image  Build the script-seed:latest Docker image."
	@echo "  test   Run the test suite inside a Docker container."
	@echo "  server Serve the website."
	@echo "  shell  Open a shell inside the Docker container for manual testing."
	@echo "  clean  Remove the Docker image."

image:
	docker build -t script-seed:latest ${DIR}

test: image
	docker run --rm -v "${DIR}":/root/script-seed script-seed:latest test

server: image
	docker run --rm -p 8000:8000 -v "${DIR}":/root/script-seed script-seed:latest server

shell: image
	docker run --rm -it -v "${DIR}":/root/script-seed script-seed:latest

clean:
	docker rmi script-seed:latest

