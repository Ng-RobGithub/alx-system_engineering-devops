#!/usr/bin/env ruby

# Match "hbt" followed by 2 to 5 "t" characters and then "n"
pattern = /hbt{2,5}n/
matches = ARGV[0].scan(pattern)

# Join the matched substrings and print
puts matches.join
