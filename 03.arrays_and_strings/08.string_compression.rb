
def compression(str)
  arr = str.split('')
  output = ''
  current_count = 0
  arr.each_with_index do |char, idx|
    current_count += 1
    if arr[idx + 1] == char
      next
    else
      output += "#{char}#{current_count}"
      current_count = 0
    end
  end
  output
end

str1 = 'aabcccccaaa'

p compression(str1) == 'a2b1c5a3'