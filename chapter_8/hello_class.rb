class HelloWorld # class 关键字， 类
  def initialize(myname = "Ruby")
    @name = myname # 初始化实例变量
  end

  def hello # 实例方法
    puts "Hello, world. I am #{@name}."
  end

  # 存取器
  def name
    @name
  end

  def name=(value)
    @name = value
  end

  # attr_reader
  # attr_writer
  # attr_accessor
  attr_accessor :name

  def greet
    puts "hi, i am #{self.name}."
  end

  Version = "1.0" # 类常量

end

bob = HelloWorld.new("Bob")
aliac = HelloWorld.new("Aliac")
ruby = HelloWorld.new()

bob.hello
aliac.hello
ruby.hello

p bob.name #=> "Bob"
p bob.name = "Robert" #=> "Robert"

p "shawn.great :"
shawn = HelloWorld.new("shawn")
shawn.greet #=> nil

p HelloWorld::Version #=> "1.0"