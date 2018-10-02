#!/usr/bin/env ruby
require 'optparse'

optparse = OptionParser.new do |opts|
  opts.banner = 'This is a ruby script seed. Customize it to get started '\
                "quickly with ruby.\n\nUsage ruby_seed.rb [options]\n\n"\
                'Default usage: You planted a magic seed!'

  opts.on('-h', '--help', 'Display help') do
    puts opts
    exit
  end
  opts.on('-t=s', '--type', 'Provide a type of seed') do |seed|
    puts "You planted a #{seed} seed!"
    exit
  end
  opts.on_tail
    puts "#{opts}"
end.parse!
