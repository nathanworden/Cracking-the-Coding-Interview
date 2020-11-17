# Print all positive integer solutions to the equation a^3 + b^3 = c^3 + d^3 where a, b, c, and d are integers between 1 and 1000

## SLOW O(n^3) way:
# def cubes(n)
#   n.times do |a|
#     a +=1
#     n.times do |b|
#       b += 1
#       n.times do |c|
#         c += 1
#         d = (a**3 + b**3 - c**3)**(1/3)
#         if a**3 + b **3 == c**3 + d**3 && 0 <= d && d<= n
#           p [a, b, c, d]
#         end
#       end
#     end
#   end
# end

# cubes(1000)


# ## Another way

n = 1000
hsh = {}
for c in 1..n
  for d in 1..n
    cd_result = c**3 + d**2
    hsh[cd_result] = [c, d]
  end
end

for a in 1..n
  for b in 1..n
    ab_result = a**3 + b**3
    if hsh[ab_result]
      p [a, b, hsh[ab_result]]
    end
  end
end

# p hsh