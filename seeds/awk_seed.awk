#!/usr/bin/gawk -E

function print_usage(){
	print "Usage: ./awk_seed.awk [options]"
	print "-h: Print this message."
	print "-t: Specify type of seed."
	exit 0
}

BEGIN {
	type = "tomato"
	for(i=1; i<ARGC; i++){
		switch(ARGV[i]){
		case "-t":
			type = ARGV[++i]
			break
		case "-h":
		default:
			print_usage()
		}
	}
	print "You planted a " type " seed!"
}
