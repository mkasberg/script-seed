#!/usr/bin/env groovy

def cli = new CliBuilder()
cli.with {
    h longOpt:'help', 'Prints this help information.'
    n longOpt:'name', 'Greet this person.', args:1
}

def opt = cli.parse(args)

if (opt.h) {
    cli.usage()
    return
}

def name = "world"
if (opt.n) {
    name = opt.n
}

println("Hello, $name!")
