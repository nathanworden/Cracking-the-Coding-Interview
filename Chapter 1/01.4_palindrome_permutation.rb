# Problem: Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrom does not need to be limied to just dictionary worlds.

# Problem:
# Is there a way to re-arrange these letters so that they are a palindrome?

# Example:
# Input: Tact Coa
# Output True (permutations: "taco cat", "atco cta", etc)

# Data Structure
# Strings, Arrays

# Algorithm

# Find all the permutations of the input string
# Check if any of the permutations are palindromes
    # Compare the string to the reverse of itself. If the two are the same, return true

# Innefficient method, because you are generating all permutations.  
    
# def palindrome_permutation(str)
#   permutations = str.downcase.split('').permutation.to_a
#   permutations.length.times do |i|
#     no_spaces = permutations[i].join.gsub(' ', '')
#     return true if no_spaces == no_spaces.reverse
#   end

#   false
# end

# p palindrome_permutation('cat')
# p palindrome_permutation('Tact Coa')



##########

########### Problem: Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrom does not need to be limied to just dictionary words.

# What characteristics would a string that is a permutation of a palindrome have?
# => There are two of every character, except for 1

def palindrome_permutation(str)
  hsh = {}
  str.gsub!(' ', '')

  str.downcase.each_char do |char|
    if hsh[char]
      hsh[char] += 1
    else
      hsh[char] = 1
    end
  end

  single = 0
  more_than_double = 0
  hsh.each do |key, value|
    single += 1 if value == 1
    more_than_double += 1 if value > 2
  end

  "single: #{single}, any more than double?: #{more_than_double}"

  return false if single != 1 || more_than_double % 2 != 0
  true
end

p palindrome_permutation('cat')
p palindrome_permutation('Tact Coa')