#!/usr/bin/env python

import argparse

parser = argparse.ArgumentParser(description='This is a python script seed. Customize it to get started quickly with python.')
parser.add_argument('-t', '--type', nargs='?', default='tomato', help='The type of seed.')
parser.add_argument('-w', '--water', action='store_true', help='Water the plant.')
# --help is added automatically!

args = parser.parse_args()

print('You planted a {} seed!'.format(args.type))
if args.water:
    print('You watered the plant.')
