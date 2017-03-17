# encoding: utf-8

# 1
puts "=== 1 ==="

def to_utf8(str_gbk, str_gb2312)
  str_gbk.encode("utf-8") + str_gb2312.encode("utf-8")
end

str_gbk = "你好"
str_gb2312 = "再见"

puts to_utf8(str_gbk, str_gb2312)


# 2
puts "=== 2 ==="

str = "demo_gbk.txt"

# 创建gbk文件
File.open(str, "w:gbk") do |f|
  f.write("你好")
end

# 输出
File.open(str, "r:GBK") { |f|
  word = f.read
  puts word.encode("UTF-8")
}