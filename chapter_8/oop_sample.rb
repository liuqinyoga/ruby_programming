f = 3.14

p f.round #=> 3 四舍五入
p f.ceil #=> 4 进位
p f.to_i #=> 3 整数变换

# 封装 encapsulation
t = Time.now
p t.year
p t.month
p t.day

# 多态 polymorphism
obj = Object.new
str = "Ruby"
num = Math::PI

p obj.to_s
p str.to_s
p num.to_s
