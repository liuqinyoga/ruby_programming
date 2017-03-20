hello1 = Proc.new do |name|
  puts "Hello, #{name}."
end

hello2 = proc do |name|
  puts "Hello, #{name}."
end

hello1.call("World")
hello2.call("Ruby")


puts "=== 判断西历的年是否为闰年的处理 ==="
leap = Proc.new do |year|
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

p leap.call(2000)
p leap[2017]
p leap[2020]


puts "=== 数组 ==="
double = Proc.new do |*args|
  args.map { |i| i * 2 } # 所有元素乘以2
end

p double.call(1, 2, 3)
p double[3, 5, 7]