#!/usr/bin/env groovy

// This is a Groovy script seed.
// Use it as a template for your own Groovy script.

def cli = new CliBuilder(
    usage:'./groovy_seed.groovy [options]',
    header:'Options:'
)
cli.with {
    h longOpt:'help', 'Prints this help information.'
    t longOpt:'type', 'Plant the type of seed.', args:1
}

def opt = cli.parse(args)

if (opt.h) {
    cli.usage()
    return
}

def type = "tomato"
if (opt.t) {
    type = opt.t
}

println("You planted a $type seed!")
