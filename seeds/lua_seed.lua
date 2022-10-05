#!/usr/bin/env lua

-- This is a Lua script seed.
-- Use it as a template for your own Lua script.

usage = "\
    usage: lua \
    This is a simple example of a Lua script that accepts options \
    \
    Options: \
    -h       Prints this help message. \
    -n NAME  Specify the user's name. \
  ";

default = "\
    You ran the Lua seed script! \
  ";

unknown = "\
    Unrecognized flag or option was passed. \
  ";


-- print default string if there are no arguments
if (#arg == 0) then
    print(default)
else
    for i=1, #arg
    do
        if (arg[i] == "-h") then
            print(usage)
            break
        elseif (arg[i] == "-n") then
            print("Hello", arg[i+1])
            break
        else
            print(unknown)
            print(usage)
            break
        end
    end
end
