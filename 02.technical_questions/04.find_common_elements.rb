# Given two sorted arrays, find the number of elements in common. The arrays are the same length and each as all distinct elements.

arr1 = [13, 27, 35, 40, 49, 55, 59]
arr2 = [17, 35, 39, 40, 55, 58, 60]

# [35, 40, 55,] => so 3

def common(arr1, arr2)
  hsh = hashify(arr1)
  common = 0
  arr2.each do |ele|
    common += 1 if hsh[ele]
  end
  common
end

def hashify(arr)
  hsh = {}
  arr.each do |ele|
    hsh[ele] = true
  end
  hsh
end

p common(arr1, arr2)