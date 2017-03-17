a = 1

# 相當於雙引號
desc = %Q{This is string #{a}.}
p desc

# 相當於單引號
str = %q|ruby said, 'hello, world!' #{a}|
p str

str2 = <<-EOB
Hello!
Here Document!
EOB

p str2

# length
p str2.length
p str2.size

# empty
p "".empty?
p "empty".empty?

# index
str3 = "String"
p str3[0]
p str3[5]
p str3[6]

# encoding
p "A".ord