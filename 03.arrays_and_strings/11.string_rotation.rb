# Assume you have a method isSubstirng which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring

str1 = "waterbottle"
str2 = "erbottlewat"

def is_substring(str1, str2)
  str2.match?(str1)
end

def rotation?(str1, str2)
  is_substring(str1, str2 + str2)
end

# p is_substring("dog", "hellodogg")
# p is_substring(str1, str2)

p rotation?(str1, str2)