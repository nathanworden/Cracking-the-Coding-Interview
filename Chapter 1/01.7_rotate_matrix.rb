require 'pry'
# Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degres. Can you do this in palce?

# Example

# rotate_matrix(
# [[1, 2, 3]
#  [4, 5, 6]
#  [7, 8, 9]]) 

# [[7, 4, 1]
#  [8, 5, 2]
#  [9, 6, 3]]

# Algorithm
# Create n empty arrays (n being the length of the input array)

# Original Array:
  # (0, 0), (0, 1), (0, 2)           (2, 0), (1, 0), (0, 0)
  # (1, 0), (1, 1), (1, 2)    --->   (2, 1), (1, 1), (0, 1)
  # (2, 0), (2, 1), (2, 2)           (2, 2), (1, 2), (0, 2)

# Code


# def rotate_matrix(arrays)
#   output = []
#   arrays.length.times do |num|
#     output << []
#   end

#   arrays.each_with_index do |arr, row_idx|
#     arr.each_with_index do |num, column_idx|
#       output[column_idx][arrays.length - 1 - row_idx] = num
#     end
#   end
#   output
# end

# p rotate_matrix(
# [[1, 2, 3],
#  [4, 5, 6],
#  [7, 8, 9]]) 

# p rotate_matrix(
#   [[1,   2,  3,  4],      #  13,  9,  5,  1
#    [5,   6,  7,  8],      #  14, 10,  6,  2
#    [9,  10, 11, 12],      #  15, 11,  7,  3
#    [13, 14, 15, 16]])     #  16, 12,  8,  4


# Using transpose: 

# def rotate_matrix(array)
#   array_flipped = []
#   array.transpose.each do |row|
#     array_flipped << row.reverse
#   end
#   array_flipped
# end



p rotate_matrix(
  [[1, 2, 3],
   [4, 5, 6],
   [7, 8, 9]]) 