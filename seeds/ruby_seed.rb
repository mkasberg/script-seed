#!/usr/bin/env ruby
require 'optparse'

options = {}
optparse = OptionParser.new do |opts|
    opts.banner = "This is a ruby script seed. Customize it to get started quickly with ruby.\n\nUsage ruby_seed.rb [options]"

    opts.on('-h', '--help', 'Display help') do
        puts opts
    end
    opts.on('-t=s', '--type', 'Provide a type of seed') do |seed|
        puts "You planted a #{seed} seed"
    end
    opts.on_tail("\nDefault output: You planted a magic seed!")
        puts opts
end.parse!