#!/usr/bin/env ruby

require_relative 'lib/month'

month = ARGV[0].to_i
year = ARGV[1].to_i


m = Month.new(month,year)
if (month < 1 or month > 12)
  puts "Date not in acceptable format/range."
elsif (year < 1800 or year > 3000)
  puts "Date not in acceptable format/range."
else
puts m.to_s
end
