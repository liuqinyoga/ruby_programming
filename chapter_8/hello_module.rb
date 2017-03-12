module HelloModule
  Version = "1.0"

  def hello(name)
    puts "Hello, #{name}."
  end

  module_function :hello # 指定hello方法为模块函数
end

p HelloModule::Version #=> "1.0"
HelloModule.hello("Aliac") #=> Hello, Aliac.

include HelloModule
p Version #=> "1.0"
hello("Ruby") #=> Hello, Ruby.