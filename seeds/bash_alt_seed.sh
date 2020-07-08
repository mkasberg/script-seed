#!/usr/bin/env bash
###
### bash_alt_seed — A cool way to do the help message
###
### Usage:
###   bash_alt_seed.sh [options]
###
### Options:
###   -h    Prints this help message.
###   -t    Specify the type of seed.

# https://samizdat.dev/help-message-for-shell-scripts/
function print_usage {
    sed -rn 's/^### ?//;T;p' "$0"
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

