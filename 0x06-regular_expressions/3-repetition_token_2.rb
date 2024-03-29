#!/usr/bin/env ruby

# Function to match repetitions of 't' token with at least one 'b' in between
def repetition_token(str)
# Use the scan method with the regular expression pattern
matches = str.scan(/hbt+n/)
# Join the matches into a single string and print
puts matches.join
end

# Check if an argument is provided
if ARGV.length != 1
puts "Usage: ./4-repetition_token_3.rb <string>"
exit(1)
end

# Call the repetition_token function with the provided argument
repetition_token(ARGV[0])
