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
const argv = require('yargs').argv

if (argv.h) {
    print_usage();
}

if (argv.t){
  type = argv.t;
}

console.log(`You planted a ${type} seed!`);
