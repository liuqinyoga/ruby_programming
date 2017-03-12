x = 1 # 局部变量
y = 1
ary = [1, 2, 3]

ary.each do |x| # 将x作为 块变量 使用
  y = x
end

p [x, y] #=> [1, 3]