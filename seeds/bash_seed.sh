#!/usr/bin/env bash

# Bash script seed.
# Use this to get started quickly, and customize it to your needs.

function print_usage {
    cat << EOF
Usage: $0 [options]

This is a bash script seed. Customize it to get started quickly with bash.

Options:
  -h  Prints this help message.
  -t  Specify the type of seed.

EOF
}

TYPE=tomato
HELP=false

while getopts ht: opt; do
    case $opt in
        h)
            print_usage
            exit 0
            ;;
        t)
            TYPE=$OPTARG
            ;;
        *)
            print_usage
            exit 1
            ;;
    esac
done

# Put your script here.

echo "You planted a ${TYPE} seed!"
