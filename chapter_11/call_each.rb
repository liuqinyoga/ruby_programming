def call_each(ary, &block) # 将Proc对象作为块传递给其他方法处理
  ary.each(&block)
end

call_each [1, 2, 3] do |item|
  p item
end

# #=>
# 1
# 2
# 3