#!/usr/bin/env php
<?php

// A seed for a simple PHP script.
// Use this to get started quickly, and modify it to suit your needs.

$usage = <<<EOD
Usage: {$argv[0]} [options]

This is a PHP script seed. Customize it to get started quickly with PHP.

Options:

  -h|--help  Prints this help information.
  --type     Specify the type of seed.

EOD;

$shortOpts = 'h';
$longOpts = array('help','type:');
$options = getopt($shortOpts, $longOpts);

if (isset($options['h']) || isset($options['help'])) {
    print $usage;
    exit;
}

// Your script goes here.
$type = "tomato";
if (isset($options['type'])) {
    $type = $options['type'];
}

$type = "Cucumber";
if (isset($options['type'])) {
    $type = $options['type'];
}

print "You planted a $type seed!\n";

