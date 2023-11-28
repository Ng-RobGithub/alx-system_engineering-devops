#!/usr/bin/env ruby

# Function to match and extract data
def extract_data(str)
# Use the scan method with the regular expression pattern
matches = str.scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)

# Iterate through the matches and print in the desired format
matches.each do |match|
puts match.join(",")
end
end

# Check if an argument is provided
if ARGV.length != 1
puts "Usage: #{$PROGRAM_NAME} <string>"
exit(1)
end

# Call the extract_data function with the provided argument
extract_data(ARGV[0])
