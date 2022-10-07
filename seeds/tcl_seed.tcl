#!/usr/bin/tclsh

set usage "
usage: tclsh \[SCRIPT\] \[ARGUMENTS\]

This is a tcl script seed. Customize it to get started quickly with Tcl.

Options:
  -h        Prints this help information.
  -n NAME   specify the users name.

"

if { $::argc > 0 } {
  # set loop index variables
  set i 0
  foreach arg $::argv {
    if {$arg == "-h"} {
      puts $usage
    } elseif {$arg == "-n"} {
      set var [lindex $argv [expr $i + 1]]
      puts "Hello $var"
      break
    } else {
      puts "Unrecognized flag or option was passed."
    }
    incr i 1
  }
} else {
  # default output
  puts "You ran the Tcl seed script!"
}
