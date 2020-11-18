# There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

# Algorithm
# Iterate through the characters of the first string. 
  # Compare the letter in the first string to the current letter of the second string.
  # If they are the same, continue
  # If they are different:
      # Try to insert the current letter from string one into string two and then compare the strings to see if they are the same. If they are, return true
      # Try to remove the current letter from the string two and compare the strings to see if they are the same. If they are, return true
      # Try to remove the current letter of string 2 and insert the current letter of string 1. Then compare the two strings and if they are the same, return true.
    #return false

    require 'pry'

def one_away(str1, str2)
  # binding.pry
  arr1 = str1.split('')
  arr2 = str2.split('')
  arr1.each_with_index do |char, idx|
    if char == arr2[idx]
      next
    else
      return true if arr2.insert(idx, char) == arr1
      arr2.delete_at(idx)

      temp = arr2[idx]
      return true if arr2.delete_at(idx) == arr1
      arr2.insert(idx, arr1[idx])
      return true if arr2 == arr1
      arr2.delete_at(idx)
      arr2.insert(idx, temp)
    end
  end
  false
end

p one_away('pale', 'ple')   == true
p one_away('pales', 'pale') == true
p one_away('pale', 'bale')  == true
p one_away('pale', 'bake')  == false