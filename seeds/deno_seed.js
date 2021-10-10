#!/usr/bin/env -S deno run --allow-all
import { parse } from 'https://deno.land/std/flags/mod.ts';

function print_usage() {
    console.log(`Usage: deno_seed.js [options]

                This is a deno script seed.

                Options:
                -h Prints this help message
                -t Specify the type of seed.`);
}
const Args = parse(Deno.args);

if (Args.h) {
    print_usage();
} else if (Args.t) {
    console.log(`You planted a ${Args.t} seed`);
} else {
    console.log(`You planted a seed`);
}
