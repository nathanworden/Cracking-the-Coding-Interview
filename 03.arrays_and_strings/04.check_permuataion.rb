# Given two strings, write a method to decide if one is a permuatation of the other.


str1 = "good"
str2 = "doog"
str3 = "dog"

def permutation?(str1, str2)
  str1.split('').sort == str2.split('').sort
end

def permutation?(str1, str2)
  hashify(str1) == hashify(str2)
end

def hashify(str1)
  hsh = {}
  str1.each_char do |char|
    if hsh[char]
      hsh[char] += 1
    else
      hsh[char] = 1
    end
  end
  hsh
end

p permutation?(str1, str2)
p permutation?(str1, str3)