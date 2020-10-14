#!/usr/bin/env julia

usage = "
usage: julia [-switches] -- [filename] [args...]

This is a Julia script seed. Customize it to get started quickly with Julia.

Options:
  args     Specify the type of seed.
  switches -h for help, -v for version and more switches can be found on official documentation.

  For more information: http://docs.julialang.org/en/v1/manual/getting-started .
  ";

if(length(ARGS)==0)
	println("You planted a water seed.")
else
	for option in ARGS
			if option == "-h"
				println("For help use -h before the filename");
				println(usage);
			else
				println("You planted a ", option , " seed.")
			end
	end
end

print("Thank you")
