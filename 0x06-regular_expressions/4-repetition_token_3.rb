#!/usr/bin/env ruby

# Function to match repetitions of 'h', 'b', 't' followed by zero or more 'n'
def match_pattern(str)
# Use the scan method with the regular expression pattern
matches = str.scan(/hbt*n/)
# Join the matches into a single string and print
puts matches.join
end

# Check if an argument is provided
if ARGV.length != 1
puts "Usage: ./0-repetition_token_0.rb <string>"
exit(1)
end

# Call the match_pattern function with the provided argument
match_pattern(ARGV[0])
