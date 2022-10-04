#!/usr/bin/env groovy

import groovy.cli.commons.CliBuilder

// This is a Groovy script seed.
// Use it as a template for your own Groovy script.

def cli = new CliBuilder(
    usage:'./groovy_seed.groovy [options]',
    header:'Options:'
)
cli.with {
    h longOpt:'help', 'Prints this help information.'
    n longOpt:'name', "Specify the user's name.", args:1
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

println("Hello $name!\n")
println("You ran the Groovy seed script!")
