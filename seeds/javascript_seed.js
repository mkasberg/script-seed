#!/usr/bin/env nodejs

function print_usage() {
  console.log(`Usage: javascript_seed.js [options]

Prints a message as an example of parsing CLI args in Javascript.

Options:
  -h              Prints this help message
  -n|--name NAME  Specify the user's name.`
  );
}

let userName = 'world';
const opts = process.argv.slice(2);

// Below, we parse arguments ourselves. This doesn't require any dependencies
// and is good enough for simple scripts. For more advanced argument parsing,
// you might want a library like yargs, commander.js, or minimist.
if (opts.length > 0) {
  switch(opts[0]) {
    case '-h':
      print_usage();
      process.exit(0);
    case '-n':
    case '--name':
      userName = opts[1];
      break;
    default:
      print_usage();
      process.exit(1);
  }
}

console.log(`Hello ${userName}!

You ran the Javascript seed script!`);
