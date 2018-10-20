#!/usr/bin/env ruby
require 'optparse'

type = 'tomato'

optparse = OptionParser.new do |opts|
  opts.banner = 'This is a ruby script seed. Customize it to get started '\
                "quickly with ruby.\n\nUsage ruby_seed.rb [options]\n\n"

  opts.on('-h', '--help', 'Display help') do
    puts opts
    exit
  end
  opts.on('-t=s', '--type', 'Provide a type of seed') do |seed|
    type = seed
  end
end.parse!

puts "You planted a #{type} seed!"
