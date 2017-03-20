def counter
  c = 0 # 初始化計數器
  Proc.new do # 每調用一次call方法，計數器+1
    c += 1 # 返回+1后的Proc對象
  end
end

# 創建計數器c1並計數
c1 = counter
p c1.call #=> 1
p c1.call #=> 2
p c1.call #=> 3

# 創建計數器c2並計數
c2 = counter
p c2.call #=> 1

p c1.call #=> 4

p c2.call #=> 2
