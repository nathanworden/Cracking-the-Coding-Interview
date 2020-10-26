# Problem:
# There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

# Example
# pale, ple -> true
# pales, pale -> true
# pales, paless -> true
# pale, bale -> true
# pale, bake -> false

# Algorithm
# Deterine which of the two strings is longer.
# Iterate through every letter in the longer word.
# If there is a descrepency between the first and second word,
    # Does replacing the letter in the shorter string make the strings the same?


def one_away(str1, str2)
  long_str = str1.length >= str2.length ? str1 : str2
  short_str = str1.length < str2.length ? str1 : str2

  edits = 0
  i = 0
  while i < long_str.length
    if long_str[i] != short_str[i]
      if replace_makes_strings_same?(long_str, short_str, i)
        short_str[i] == long_str[i]
        edits += 1
        return true
      else
        short_str.insert(i, long_str[i])
        edits += 1
      end
    end
    i += 1
  end

  edits <= 1  ? true : false
end

def replace_makes_strings_same?(long_str, short_str, i)
  short_str[i] = long_str[i]
  short_str == long_str
end



p one_away('pale', 'ple') == true
p one_away('pales', 'pale') == true
p one_away('pales', 'paless') == true
p one_away('pale', 'bale') == true 
p one_away('pale', 'bake') == false
  
   