# Problem
# Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring (e.g. "waterbottle" is a rotation of "erbottlewat")

# Example

def string_rotation(str1, str2)
  arr1 = str1.split('')
  str1.length.times do |i|
     return true if arr1.unshift(arr1.pop).join == str2
  end
  return false
end

p string_rotation('waterbottle', "erbottlewat")  #== true
p string_rotation('nathan', 'daniel') # == false