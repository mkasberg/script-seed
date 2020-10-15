#!/usr/bin/env tclsh

set usage "usage: tclsh Options

This is a tcl script seed. Customize it to get started quickly with tcl.

Options
  -h  Prints this help information
  type Provide the type of seed to plant

  For more information: https://www.tcl.tk/ .
  "

if { $::argc > 0 } {
    foreach arg $::argv {
		if {$arg == "-h"} {
			puts $usage
		} else {
			puts "You planted a $arg seed."
		}
    }
} else {
    puts "You planted a water seed";
}
