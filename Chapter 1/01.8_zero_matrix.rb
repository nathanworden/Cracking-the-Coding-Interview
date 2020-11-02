# Problem
# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0


matrix = [[1, 2, 3, 4, 5],  
          [1, 2, 3, 4, 5],
          [1, 2, 3, 0, 5],
          [1, 2, 2, 4, 5]]

 [[1, 2, 3, 0, 5],
  [1, 2, 3, 0, 5],
  [0, 0, 0, 0, 0],
  [1, 2, 3, 0, 5]]

  # Algorithm
  # Iterate through each row in the matrix
  # When you come accross a 0, save the row and the column
  # Once you finish iterating, go back and change:
      # The row to all zeros
      # Iterate through each row again and make the element at index 'column' 0

def zero_matrix(matrix)
  rows_with_0s = []
  columns_with_0s = []
  matrix.each_with_index do |row, idx|
    if row.index(0)
      rows_with_0s << idx
      columns_with_0s << row.index(0)
    end
  end


  rows_with_0s.each do |idx|
    matrix.each_with_index do |row, row_idx| 
      row.map! do |num|
        if idx == row_idx 
          num = 0 
        else
          num
        end
      end
    end
  end

  columns_with_0s.each do |idx|
    matrix.each do |row|
      row[idx] = 0
    end
  end
  matrix
end

p zero_matrix(matrix)