# Problem:
# Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string. 

#Example:
# Input : "Mr John Smith    ", 13
# Output: "Mr%20John%20Smith"

# Examples

# urlify("Nathan Worden") == "Nathan%20Worden"
# urlify("AppFolio  APM") == "AppFOlio%20%20APM"
# urlify("hello   ") == "hello"
# urlify("  hello hi") == "%20hello%20hi"


# Data Structures
# Strings
# Arrays

# Algorithm
# Search through the input string for spaces and replace every space with '%20'

def urlify(str)
  str.strip.gsub(' ', '%20')
end


p urlify("Nathan Worden") == "Nathan%20Worden"
p urlify("AppFolio  APM") == "AppFolio%20%20APM"
p urlify("hello   ") == "hello"
p urlify("  hello hi") == "hello%20hi"