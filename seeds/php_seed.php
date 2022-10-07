#!/usr/bin/env php
<?php

// This is a PHP script seed.
// Use it as a template for your own PHP script.

$usage = <<<EOD
Usage: {$argv[0]} [options]

Prints a message as an example of parsing CLI args in PHP.

Options:
  -h|--help       Prints this help information.
  -n|--name NAME  Specify the name of the user.

EOD;

// Parse command line options.
$shortOpts = 'hn:';
$longOpts = array('help','name:');
// See https://www.php.net/manual/en/function.getopt.php
$options = getopt($shortOpts, $longOpts);

if (isset($options['h']) || isset($options['help'])) {
    print $usage;
    exit;
}

// Your script goes here.
$name = "world";
if (isset($options['n'])) {
    $name = $options['n'];
}
if (isset($options['name'])) {
    $name = $options['name'];
}

print "Hello $name!\n\n";
print "You ran the PHP seed script!\n";
