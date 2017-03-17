# 用 collect 方法处理用 each_line 方法获取的行
str = " 100 \n 200 \n 300 \n"
tmp = str.each_line.collect { |line| line.chomp * 3 }
p tmp

# 用 collect 方法处理用 each_byte 方法获取的数值
str = "abcde"
tmp = str.each_byte.collect { |byte| -byte }
p tmp

p str.each_line.class #=> Enumerator
