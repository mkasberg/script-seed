#!/usr/bin/env lua

usage = "\
	usage: lua [options] [filename] [args...] \
	This is a Lua script seed. Customize it to get started quickly with Lua.\
	arguments:\
	  args     Specify the type of seed.\
	  options -h for help, -v for version and more options can be found on official documentation.\
	  \
	  For more information: https://www.lua.org/manual/5.4/ .\
  ";

if (#arg == 0) 
then
	print("You planted a water seed.");
else
	for i=1,#arg,1
	do
		if(arg[i] == "-h")
		then
			print("For help use -h before the filename");
			print(usage);
		else
			print("You planted a " ..arg[i].. " seed.")
		end
	end
end
print("Thank you")
