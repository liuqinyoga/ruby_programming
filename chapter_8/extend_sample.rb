module ClassMethods # 类方法
  def cmethod
    "class method"
  end
end

module InstanceMethods # 实例方法
  def imethod
    "instance method"
  end
end

class MyClass
  # 使用extend方法定义类方法
  extend ClassMethods
  # 使用include定义实例方法
  include InstanceMethods
end

p MyClass.cmethod #=> "class method"
p MyClass.new.imethod #=> "instance method"