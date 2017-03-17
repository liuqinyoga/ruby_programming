# 1
a = Array.new(100) { |i| i+1 }
p a
p a[0]
p a[99]

b = (1..100).to_a
puts "Array B:"
p b

# 2
a2 = Array.new(100) { |i| (i+1)*100 }
p a2
p a2[0]
p a2[99]

puts "collect!"
a.collect! { |i| i * 100 }
p a

# 3
# 创建数组
a = (1..100).to_a

# 取出ary中为3的倍数的元素
a3 = a.reject { |i| i % 3 != 0 }
p a3

# 另外，还有只返回符合条件的元素，不需要带!的select方法
a4 = a.select { |i| i % 3 == 0 }
p a4

# 删除ary中3的倍数以外的元素
a.reject! { |i| i % 3 != 0 }
p a

# 4
# 创建数组
a = (1..100).to_a

# (a) 使用Array#reverse方法
a2 = a.reverse
p a2

# (b) 使用Array#sort方法
a2 = a.sort { |n1, n2| -(n1 <=> n2) }
p a2

# (c) 使用Array#sort_by方法
a2 = a.sort_by { |i| -i }
p a2

# 5
# 创建数组
a = (1..100).to_a

# (a) 使用Array#each方法求和
result = 0
a.each { |i| result += i }
p result

# (b) 使用Array#inject方法求和
p a.inject(0) { |memo, i| memo += i }


# 6
# 指定首个元素索引以及所获取的元素个数。

# 创建数组
ary = (1..100).to_a
result = Array.new
10.times do |i|
  result << ary[i*10, 10]
end
p result

# 7
# 本题的解答重点在于，使用Array#each遍历ary1各元素的同时，使用相应的索引访问ary2的各元素。
# 另外一种解法是使用Array#zip方法，该方法可以同时方法配对的两个数组中的各元素。

def sum_array(ary1, ary2)
  result = Array.new
  i = 0
  ary1.each do |elem1|
    result << elem1 + ary2[i]
    i+=1
  end
  return result
end

# 使用Array#zip方法的另外一种解法
def sum_array_zip(ary1, ary2)
  result = Array.new
  ary1.zip(ary2) { |a, b| result << a + b }
  return result
end

p sum_array([1, 2, 3], [4, 6, 8])
#=> [5, 8, 11]