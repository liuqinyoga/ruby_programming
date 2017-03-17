"adfadfsadf".scan(/(.)(a)/) do |a, b|
  p a + "-" + b
end

# #=>
# "f-a"
# "s-a"


p "adfadfsadf".scan(/.a/)

# #=>
# ["fa", "sa"]