#!/usr/bin/env deno
//deno seed

function print_usage() {
    console.log(`Usage: deno_seed.js [options]

This is a deno script seed.

Options:
  -h  Prints this help message
  -t  Specify the type of seed.`);
}

Deno.args.forEach((arg) => {
    switch (arg) {
        case '-h':
        case '--help':
            print_usage();
            break;
        case '-t':
        case '--type':
            console.log('Deno seed planted');
            break;
    }
});
