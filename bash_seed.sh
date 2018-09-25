#!/usr/bin/env bash

# Bash script seed.
# Use this to get started quickly, and customize it to your needs.

function print_usage {
    cat << EOF
Usage: $0 [options]

Write some usage instructions here.

Options:
  -h  Prints this help message.
  -n  Greet this name.

EOF
}

NAME=world
HELP=false

while getopts hn: opt; do
    case $opt in
        h)
            print_usage
            exit 0
            ;;
        n)
            NAME=$OPTARG
            ;;
        *)
            print_usage
            exit 1
            ;;
    esac
done

# Put your script here.

echo "Hello, $NAME!"
