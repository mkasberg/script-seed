#!/usr/bin/env python

require 'optparse'

# This will hold the options we parse
options = {}

OptionParser.new do |parser|

  # Whenever we see -n or --name, with an
  # argument, save the argument.
  parser.on("-t", "--type TYPE", "The type of seed.") do |v|
    options[:type] = v
  end

   parser.on("-h", "--help", "Show this help message") do ||
    puts parser
    exit
  end

end.parse!



# Now we can use the options hash however we like.
if options[:type]
puts "You planted a #{ options[:type] } seed!"
elsif 
puts "You watered a plant."
end


