a = Rational(2, 5)
p a
p a.to_f

p 123456
p 123_456
puts

p Math.sqrt(4).to_i
p Math.sqrt(10).to_i
p Math.sqrt(10).ceil
p Math.sqrt(15).to_i
p Math.sqrt(15).round
p Math.sqrt(15).ceil
puts

p Random.rand
p Random.rand(100)
p Random.rand(100)
puts

a = Rational(1, 10) + Rational(2, 10)
b = Rational(3, 10)

p [a, b]
p a == b

# #=>
# [(3/10), (3/10)]
# true

puts
