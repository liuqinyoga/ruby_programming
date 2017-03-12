hello = Proc.new do |name| # 将块封装为对象
  puts "hello, #{name}."
end

hello.call("world")
hello.call("ruby")

# #=>
# hello, world.
# hello, ruby.