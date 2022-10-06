#!/usr/bin/env -S deno run --allow-all
import { parse } from "https://deno.land/std/flags/mod.ts";

// This is a Deno script seed.
// Use it as a template for your own Deno script.

function print_usage() {
  console.log(`Usage: deno_seed.js [options]

  Prints a message as an example of parsing CLI args in Deno.

Options:
  -h       Prints this help message.
  -n NAME  Specify the user's name.`);
}

// function parse - https://deno.land/std@0.158.0/flags/mod.ts?s=parse
// parse options - https://deno.land/std@0.158.0/flags/mod.ts?s=ParseOptions
const Args = parse(Deno.args);

if (Args.h) {
  print_usage();
  Deno.exit(0);
}

const Name = Args.n || "world";
console.log(`Hello ${Name}!

You ran the Deno seed script!
`);
