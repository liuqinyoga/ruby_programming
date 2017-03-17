# encoding: utf-8
a = "abc"
b = "汉字"

p a.encoding
p b.encode

c = "edf"
c.encode!("gbk")
p c.encoding

puts b
p b
p b.encode!("utf-8")
puts b.encode!("utf-8")

puts "utf8-mac"
puts b.encode!("utf8-mac")
puts b.encode!("utf8-mac").encoding