.PHONY: help image test shell clean
DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "If you're not using VS Code, this Makefile will help you interact with the dev container."
	@echo "If you're inside a VS Code dev container, don't use this Makefile."
	@echo ""
	@echo "Targets:"
	@echo "  help   Print this help message."
	@echo "  image  Build the script-seed:latest Docker image."
	@echo "  test   Run the test suite inside a Docker container."
	@echo "  server Serve the website."
	@echo "  shell  Open a shell inside the Docker container for manual testing."
	@echo "  clean  Remove the Docker image."

image:
	docker build -t script-seed:latest "${DIR}/.devcontainer"

test: image
	docker run --rm --user vscode -v "${DIR}":/workspaces/script-seed script-seed:latest sh -c '/workspaces/script-seed/test.sh'

server: image
	docker run --rm --user vscode -p 8000:8000 -it  -v "${DIR}":/workspaces/script-seed script-seed:latest sh -c '/workspaces/script-seed/bin/server'

shell: image
	docker run --rm --user vscode --workdir /workspaces/script-seed -it -v "${DIR}":/workspaces/script-seed script-seed:latest bash

clean:
	docker rmi script-seed:latest
