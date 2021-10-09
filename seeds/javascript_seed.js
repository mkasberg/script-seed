#!/usr/bin/env nodejs

function print_usage() {
  console.log(`Usage: javascript_seed.js [options]

This is a javascript script seed. Customize it to get started quickly with javascript.

Options:
  -h  Prints this help message
  -t  Specify the type of seed.`
  )
}

let type = 'tomato';
const opts = process.argv.slice(2);

// Below, we parse arguments ourselves. This doesn't require any dependencies
// and is good enough for simple scripts. For more advanced argument parsing,
// you might want a library like yargs, commander.js, or minimist.
if (opts.length > 0) {
  switch(opts[0]) {
    case '-h':
      print_usage();
      process.exit(0);
    case '-t':
      type = opts[1];
      break;
    default:
      print_usage();
      process.exit(1);
  }
}

console.log(`You planted a ${type} seed!`);
