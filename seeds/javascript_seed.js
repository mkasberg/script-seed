#!/usr/bin/env nodejs

function print_usage() {
  console.log(`Usage: javascript_seed.js [options]

This is a javascript script seed. Customize it to get started quickly with javascript.

Options:
  -h  Prints this help message
  -t  Specify the type of seed.`)
}

let type = 'tomato';
const opts = process.argv.slice(2);

switch (opts[0]) {
  case '-h':
    print_usage();
    break;
  case '-t':
    type = opts[1];
    break;
  default:
    break;
}

console.log(`You planted a ${type} seed!`);
