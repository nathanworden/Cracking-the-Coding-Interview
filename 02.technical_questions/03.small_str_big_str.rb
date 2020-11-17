# Given a smaller string s and a bigger string b, design an algorithm to find all permutations of the shorter string with the longer one. Printe the location of each permutation.

s = 'abbc'
b = 'cbabadcbbabbcbabaabccbabc'

def perm_in(small, big)
  hsh = hashify(small)

  big.split('').each_with_index do |char, idx|
    if hsh[char]
      window_len = idx + small.length - 1
      slice = (big[idx..window_len ])
      slice_hsh = hashify(slice)
      p slice_hsh if slice_hsh == hsh
    end
  end

end

def hashify(str)
  hsh = {}
  str.each_char do |char|
    hsh[char] ? hsh[char] += 1 : hsh[char] = 1
  end
  hsh
end

p perm_in(s, b)

# p hashify('dooog')