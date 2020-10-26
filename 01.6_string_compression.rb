# Problem:
# Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not becomes smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a-z).

# Input:
# String

# Output:
# Either the input string or a "compressed string"

# Rules


# Examples

# string_compression('aabcccccaaa')  == 'a2b1c5a3'
# string_compression('abcdefg') == 'abcdefg' # this is longer: (a1b1c1d1e1f1g1)
# string_compression('nathan') == 'nathan' # longer: 'n1a1t1h1a1n1'

# Data Structures
# Strings
# Arrays

# Algrorithm
# Loop through the letters of the input string while building an output string
# If the current letter is the same as the last letter of the 'built string', increment a count
# Else, push the count into the built string, then push the current letter onto the bult string, and inrement the count
# Compare the built string length to the input string length. Return the shorter of the two

# Code

def string_compression(str)
  output = [str[0]]
  count = 0
  str.split('').each do |char|
    if char == output[-1]
      count += 1
    else
      output << count
      output << char
      count = 1
    end
  end
  output << count

  output.length < str.length ? output.join : str
end


p string_compression('aabcccccaaa')  == 'a2b1c5a3'
p string_compression('abcdefg') == 'abcdefg' # this is longer: (a1b1c1d1e1f1g1)
p string_compression('nathan') == 'nathan' # longer: 'n1a1t1h1a1n1'