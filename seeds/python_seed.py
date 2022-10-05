#!/usr/bin/env python3
import argparse

# This is a Python script seed.
# Use it as a template for your own Python script.
# See https://docs.python.org/3/library/argparse.html
parser = argparse.ArgumentParser(description='Prints a message as an example of parsing CLI args in Python.')
parser.add_argument('-n', '--name', default='world', help="Specify the user's name.")
# --help is added automatically!

args = parser.parse_args()

print("Hello {}!\n".format(args.name))
print('You ran the Python seed script!')
