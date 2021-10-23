#!/usr/bin/env gbs3

' This is a BASIC script seed.
' Use it as a template for your own BASIC (Gambas) script.

IF ARGS[1] = "-h"
    PRINT "Usage: ./bash_seed.sh [options]"
    PRINT ""
    PRINT "Prints a message as an example of parsing CLI args in BASIC/Gambas."
    PRINT ""
    PRINT "Options:"
    PRINT "  -h       Prints this help message."
    PRINT "  -n NAME  Specify the user's name."
    QUIT
END IF

DIM name AS String
name = "world"
IF ARGS[1] = "-n" AND ARGS.Count > 2
    name = ARGS[2]
END IF

PRINT "Hello " & name & "!"
PRINT ""
PRINT "You ran the BASIC (Gambas) seed script!"
