class RingArray < Array # 指定父类
  def [](i) # 重定义运算符
    idx = i % size # 计算新索引值
    super(idx) # 调用父类中同名的方法
  end
end

wday = RingArray["w1", "w2", "w3", "w4", "w5", "w6", "w7"]
p wday[6] #=> w7
p wday[11] #=> w5  # 超出数组长度索引时，结果会从溢出部分的开头开始重新计算
p wday[15] #=> w2
p wday[-1] #=> w7


# Object.instance_methods
# => [:instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend, :to
# _enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :display, :object_id, :send, :to_s, :method, :public_method, :singleton_method, :define_singleton_method, :nil?, :hash, :class, :sing
# leton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :==, :!=, :__send__, :equal?, :insta
# nce_eval, :instance_exec, :__id__]
#
# BasicObject.instance_methods
# => [:!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
