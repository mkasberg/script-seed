#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "Building script-seed Docker Image"
echo "================================="
docker build -t script-seed:latest ${DIR}

echo -e "\n"
echo "Running script-seed Tests"
echo "========================="
docker run --rm -v "${DIR}":/root/script-seed script-seed:latest /root/script-seed/test.sh

echo "Tests PASSED!"
