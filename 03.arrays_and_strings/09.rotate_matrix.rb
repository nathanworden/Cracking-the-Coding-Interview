# Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees.

arr = [
  [1, 1, 1, 1],
  [2, 2, 2, 2],
  [3, 3, 3, 3],
  [4, 4, 4, 4]
]

# index in row becomes new row
# row_idx becomes new index

def rotate_matrix(matrix)
  new_arr = Array.new(matrix.length, [])
  matrix.each_with_index do |row, row_idx|
    row.each_with_index do |element, ele_idx|
      new_idx = matrix.length - 1 - row_idx
      new_arr[ele_idx][new_idx] = element
    end
  end
  new_arr
end

p rotate_matrix(arr) #== [
#                           [4, 3, 2, 1],
#                           [4, 3, 2, 1],
#                           [4, 3, 2, 1],
#                           [4, 3, 2, 1], 
# ]