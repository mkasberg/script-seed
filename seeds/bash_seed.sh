#!/usr/bin/env bash

# This is a Bash script seed.
# Use it as a template for your own Bash script.

function print_usage {
    cat << EOF
Usage: $0 [options]

Prints a message as an example of parsing CLI args in Bash.

Options:
  -h       Prints this help message.
  -n NAME  Specify the user's name.

EOF
}

NAME=""
HELP=false

# See https://man7.org/linux/man-pages/man1/getopts.1p.html
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
if [ "$NAME" == "" ]; then
    NAME="world"
fi

echo -e "Hello $NAME!\n"
echo "You ran the Bash seed script!"
