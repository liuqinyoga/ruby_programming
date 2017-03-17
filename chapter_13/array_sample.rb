a = Array.new
p a

a = Array.new(5)
p a

a = Array.new(5, 0)
p a

# %w  字符
lang = %w(Ruby Perl Python Schema)
p lang #=> ["Ruby", "Perl", "Python", "Schema"]

# %i  符号
lang = %i(Ruby Perl Python Schema)
p lang #=> [:Ruby, :Perl, :Python, :Schema]

# to_a
color_type = {block: "#000000", white: "#FFFFFF"}
p color_type.to_a

# split
column = "2017/03/15 subject ruby foo".split()
p column

# index
alpha = %w(a b c d e f)
p alpha.values_at(1, 3, 5) #=> ["b", "d", "f"]

p alpha.first
p alpha.last

# method
item = %w(1 2 3 4 5)
item.unshift("0")
p item #=> ["0", "1", "2", "3", "4", "5"]

# compact
a = [1, 2, 3, nil, nil]
a.compact
p a
a.compact!
p a
a.compact
p a

# new
a = Array.new(5) { |i| i+1 }
p a #=> [1, 2, 3, 4, 5]
p a[0]
p a[0][1]
p a[0][6]

a = Array.new(3) do
  [0, 0, 0]
end
p a #=> [[0, 0, 0], [0, 0, 0], [0, 0, 0]]