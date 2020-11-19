# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.

# Algorithm
# Iterate through the arrays once and find the 0s.
# Save the coordinates
# Iterate through the arrays again and change the elements with similar coordinates to 0.

arr = [
        [1, 2, 3, 4, 5],
        [1, 0, 3, 4, 5],
        [1, 2, 3, 0, 5],
        [1, 2, 3, 4, 5],
]


# arr = [
#   [1, 0, 3, 0, 5],
#   [0, 0, 0, 0, 0],
#   [0, 0, 0, 0, 0],
#   [1, 0, 3, 0, 5],
# ]

require 'pry'

# def zero_matrix(arr)
#   row_hsh = {}
#   idx_hsh = {}
#   arr.each_with_index do |row, row_idx|
#     row.each_with_index do |element, ele_idx|
#       if element == 0
#         row_hsh[row_idx] = true
#         idx_hsh[ele_idx] = true
#       end
#     end
#   end

#   arr.each_with_index do |row, row_idx|
#     row.each_with_index do |element, ele_idx|
#       arr[row_idx][ele_idx] = 0 if idx_hsh[ele_idx]
#       arr[row_idx][ele_idx] = 0 if row_hsh[row_idx]
#     end
#   end
#   arr.each {|row| p row}
# end

def zero_matrix(arr)
  rows = []
  columns = []
  arr.each_with_index do |row, row_idx|
    row.each_with_index do |element, ele_idx|
      if element == 0
        rows << row_idx
        columns << ele_idx
      end
    end
  end

  rows.each do |row_idx_num|
    arr[row_idx_num] = Array.new(arr[row_idx_num].length, 0)
  end
  columns.each do |column_idx_num|
    arr.each do |row|
      row[column_idx_num] = 0
    end
  end
  arr.each {|row| p row}
end


zero_matrix(arr)