#!/usr/bin/env ruby
require 'optparse'

# This is a Ruby script seed.
# Use it as a template for your own Ruby script.

name = 'world'
# See https://ruby-doc.org/stdlib-2.7.0/libdoc/optparse/rdoc/OptionParser.html
optparse = OptionParser.new do |opts|
  opts.banner = "Prints a message as an example of parsing CLI args in Ruby.\n"\
                "Usage ruby_seed.rb [options]\n\n"

  opts.on('-h', '--help', 'Display help') do
    puts opts
    exit
  end
  opts.on('-n=s', '--name', "Specify the user's name.") do |n|
    name = n
  end
end.parse!

puts "Hello #{name}!\n\n"
puts "You ran the Ruby seed script!"
