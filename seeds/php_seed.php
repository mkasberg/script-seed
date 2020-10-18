#!/usr/bin/env php
<?php

// This is a PHP script seed.
// Use it as a template for your own PHP script.

$usage = <<<EOD
Usage: {$argv[0]} [options]

Prints a message as an example of parsing CLI args in PHP.

Options:

  -h|--help  Prints this help information.
  -t|--type  Specify the type of seed.

EOD;

// Parse command line options.
$shortOpts = 'ht:';
$longOpts = array('help','type:');
$options = getopt($shortOpts, $longOpts);

if (isset($options['h']) || isset($options['help'])) {
    print $usage;
    exit;
}

// Your script goes here.
$type = "tomato";
if (isset($options['t'])) {
    $type = $options['t'];
}
if (isset($options['type'])) {
    $type = $options['type'];
}

print "You planted a $type seed!\n";
