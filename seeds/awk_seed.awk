#!/usr/bin/gawk -E

# This is an Awk script seed.
# Use it as a template for your own Awk script.

function print_usage(){
	print "Usage: ./awk_seed.awk [options]"
	print ""
	print "Prints a message as an example of parsing CLI args in Awk."
	print ""
	print "Options:"
	print "  -h       Print this message."
	print "  -n NAME  Specify the user's name."
	exit 0
}

BEGIN {
	name = "world"
	for(i=1; i<ARGC; i++){
		switch(ARGV[i]){
		case "-n":
			name = ARGV[++i]
			break
		case "-h":
		default:
			print_usage()
		}
	}

	print "Hello " name "!"
	print ""
	print "You ran the Awk seed script!"
}
