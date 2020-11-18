# Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

# Palindrome
# 2 of each letter except for the middle

def palindrome_permuatation(str)
  str = str.downcase.gsub(' ', '')
  hsh = {}
  str.each_char do |char|
    if hsh[char]
      hsh[char] += 1
    else
      hsh[char] = 1
    end
  end

  ones = []
  hsh.each do |key, value|
    if value == 1
      ones << value
    elsif value % 2 != 0
      return false
    end
  end

  ones.length <= 1
end


p palindrome_permuatation('Tact Coa')
p palindrome_permuatation('nnaattaann')
p palindrome_permuatation('abc') == false