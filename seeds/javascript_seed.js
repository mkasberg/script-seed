#!/usr/bin/env nodejs

const yargs = require('yargs');

const options = yargs.scriptName('javascript_seed.js')
  .usage('Usage: $0 [args]')
  .help('h')
  .alias('h', 'help')
  .alias('t', 'type')
  .default('t', 'tomato')
  .describe('t', 'Specify the type of seed')
  .version(false)
  .epilogue("This is a javascript seed. Use it to get started quickly with a JS script.\nIt makes use of yargs: https://yargs.js.org")
  .argv

if (options.help) {
    yargs.showHelp();
}

console.log(`You planted a ${options.type} seed!`);
