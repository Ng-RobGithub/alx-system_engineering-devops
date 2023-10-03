#!/usr/bin/env ruby
# Check if the argument matches the regular expression /School/
def match_school(argument)
regex = /School/
if argument.match?(regex)
puts "The argument '#{argument}' contains 'School'."
else
puts "The argument '#{argument}' does not contain 'School'."
end
end

# Check if an argument was provided and call the matching function
if ARGV.empty?
puts "Please provide an argument."
else
argument = ARGV[0]
match_school(argument)
end
