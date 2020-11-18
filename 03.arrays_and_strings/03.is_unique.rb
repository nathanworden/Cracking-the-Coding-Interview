# Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

#using a hash table
def unique(str)
  hsh = {}
  str.each_char do |char|
    if hsh[char]
      return false
    else
      hsh[char] = true
    end
  end
  true
end

# sorting and then comparing. Doesn't use additional data structures.
def unique(str)
  sorted = str.split('').sort
  sorted.each_with_index do |letter, idx|
    return false if sorted[idx + 1] == letter 
  end
  true
end

p unique('hello')
p unique('dog')