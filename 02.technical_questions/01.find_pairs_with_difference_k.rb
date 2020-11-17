# Given an array of distinct integer values, count the number of pairs of integers that have differenxe k. or example, given the array [1, 7, 5, 9, 2, 12, 3] and the difference k = 2, there are four pairs with difference 2: [1, 3], [3, 5], [5, 7], [7, 9]

# Put every element in the array into a hash table. O(N)
# Iterate through every element in the array to see if  `element + k` is in the hash table. O(N)
# Save them if true
# Total runtime should be O(2N) => O(N)


arr = [1, 7, 5, 9, 2, 12, 3]

def difference_of(arr, k)
  hsh = {}
  output = []
  arr.each do |element|
    hsh[element] = true
  end

  arr.each do |element|
    if hsh[element + k]
      output << [element, element + k]
    end
  end
  output
end

p difference_of(arr, 2) #=> [1, 3], [3, 5], [5, 7], [7, 9]