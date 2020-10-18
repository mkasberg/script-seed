#!/usr/bin/env bash

# This is a Bash script seed.
# Use it as a template for your own Bash script.

function print_usage {
    cat << EOF
Usage: $0 [options]

Prints a message as an example of parsing CLI args in Bash.

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
