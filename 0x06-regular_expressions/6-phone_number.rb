#!/usr/bin/env ruby

# Function to match strings consisting of exactly 10 digits
def match_pattern(str)
# Use the scan method with the regular expression pattern
matches = str.scan(/^\d{10}$/)
# Join the matches into a single string and print
puts matches.join
end

# Check if an argument is provided
if ARGV.length != 1
puts "Usage: ./5-beginning_and_end.rb <string>"
exit(1)
end

# Call the match_pattern function with the provided argument
match_pattern(ARGV[0])
