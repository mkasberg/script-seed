#!/usr/bin/env php
<?php

// A seed for a simple PHP script.
// Use this to get started quickly, and modify it to suit your needs.

$usage = <<<EOD
Usage: {$argv[0]} [options]

Put your instructions here.

Options:

  -h|--help  Prints this help information.
  --name     The name to greet.

EOD;

$shortOpts = 'h';
$longOpts = array('help','name:');
$options = getopt($shortOpts, $longOpts);

if (isset($options['h']) || isset($options['help'])) {
    print $usage;
    exit;
}

// Your script goes here.
$name = "world";
if (isset($options['name'])) {
    $name = $options['name'];
}

print "Hello, $name!\n";
