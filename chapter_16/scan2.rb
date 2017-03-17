"adfadfsadf".scan(/(.)(a)/) do |matched|
  p matched
end

# #=>
# ["f", "a"]
# ["s", "a"]