class HelloCount
  @@count = 0 # 类变量，调用hello方法的次数

  def HelloCount.count # 读取调用次数的类方法
    @@count
  end

  def initialize(myname="Ruby")
    @name = myname
  end

  def hello
    @@count += 1 # 累加调用次数
    puts "Hello, world. I am #{@name}.\n"
  end
end

bob = HelloCount.new("Bob")
aliac = HelloCount.new("Aliac")
ruby = HelloCount.new("Ruby")

p HelloCount.count #=> 0
bob.hello
aliac.hello
ruby.hello
p HelloCount.count #=> 3
