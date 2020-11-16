# This function prints the powers of 2 from on though n (inclusive)

def powers_of_2(n)
  if n < 1
    return 0
  elsif n == 1
    p 1
    return 1
  else
    prev = powers_of_2(n / 2)
    curr = prev * 2
    p curr
    return curr
  end
end


powers_of_2(4)