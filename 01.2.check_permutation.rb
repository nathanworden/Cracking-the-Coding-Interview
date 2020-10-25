# Problem: Given two strings, write a method to decide if one is a permutation of the other.

# Two strings are permutations of each other if:
# They have the same number of letters
# The letters are in a different order
# All the letters in one string are present in the other



# Examples
# check_permutation('nathan', 'thanna') == true
# check_permutation('nathan', 'daniel') == false
# check_permutation('dog', 'dog') == false

# Data Structures
# String
# Array

# Algorithm
# Check if the two strings are different lengths. If they are, return false
# Iterate through each letter of the first string
    # Look at each letter of the second string
        # If the letters matach
          # Pull the matched letter out of the second string, and move on to the next letter in the first string
        # If the letters do not match, continue
        # If you make it through the loop and the current letter does not match with any letter in the second string, return false.
      # If you make it throgh all the letters in the first string without returning false, return true


def check_permutation(str1, str2)
  return false if str1.length != str2.length
  return false if str1 == str2

  str1.each_char do |char|
    match_index = str2.index(char)
    return false if match_index == nil
    str2.slice!(match_index)
  end

  return true
end


p check_permutation('nathan', 'thanna') == true
p check_permutation('nathan', 'daniel') == false
p check_permutation('dog', 'dog') == false
p check_permutation('god    ', 'dog') == false
p check_permutation('God', 'dog') == false