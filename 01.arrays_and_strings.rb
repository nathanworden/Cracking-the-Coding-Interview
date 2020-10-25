# Hash Tables

# A hash table is a data structure that maps keys to values for highly efficient lookup.

# students = Array.new(100)

# students[21] = ['Belle', 'Sofia']
# students[57] = 'Ariel'
# students[12] = 'Peter Pan'
# students[14] = 'Mickeey Mouse'

# p students[21][1]


# The purpose of a hash function is to convert a given key into an integer of limited range. In order to reduce the range, a commonly used techniqe is the division method. In the division method, the key is divided by the size of the storage or table and the remainder is the location inside that table where a record can be stored. Therefore, in the example above, if the table size was 20, the locations would be 1, 17, 12, 14 drived from the computation below:

# The hash function is a mathematical function that takes a string of any length and produces a fixed length integer value. The hash data structure derives its name from this hashing mechanism.



##

# A hash table is a data structure that maps keys to values for highly efficient lookup. There are a number of ways of implementing this. Here, we will describe a simple but common implementation. 

# In this simple implementation, we use an array of linked lists and a hash code function. To insert a key (which might be a string or essentially any other data type) and value, we do the following:

# 1) First, compute the key's hash code, which will usually be an int or long. Note that two different keys could have the same hash code, as there may be an infinite number of keys and a finite number of ints.

# p "hi".hash 
# p "abc".hash 
# p "aa".hash
# p "qs".hash
# p "pl".hash

#2) Then, map the hash code to an index in the aray. This could be done with something like hash(key) % array_length. Twho different hash codes could map to the same index.

# p "hi".hash % 20
# p "abc".hash % 20
# p "aa".hash % 20
# p "qs".hash % 20
# p "pl".hash % 20

#3) At this index, there is a linked list of keys and values. Store the key and value in this index. We must use a linked list because of collisions: you could have two different keys with the same hash code, or two different hash codes that map to the same index.




########################################

# 1) Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?


# Problem
# Does this string have all unique characters?

# Example
# unique_chars("hello") == false
# unique_chars("daniel") == true

# Data Sctrue
# Strings

# Algorithm
# Iterate through each letter in the string.
  # For each letter, compare that letter to all the other subsequent letters
  # If you find any repeats, return false
# If you make it through the entire iteration without finidhing a repeat, return true

def unique_chars(str)
  str.each_char.with_index do |letter, index|
    next_idx = index + 1
    substring = str[next_idx..-1]
    
    substring.each_char.with_index do |sub_letter|
      return false if letter == sub_letter
    end
    # p "#{letter}: #{index}"
  end

  return true
end

# p unique_chars("hello") #== false
# p unique_chars("daniel") == true




p unique_chars("hello") #== false
p unique_chars("daniel") #== true


