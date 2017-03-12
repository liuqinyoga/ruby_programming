x = y = z = 0 # 局部变量 x, y, z
ary = [1, 2, 3]

ary.each do |x; y | # 块变量 x, y
  y = x
  z = x
  p [x, y, z]
end
puts
p [x, y, z]

# #=>
# [1, 1, 1]
# [2, 2, 2]
# [3, 3, 3]
#
# [0, 0, 3]