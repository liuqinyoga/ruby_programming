class C1
  def hello
    "hello"
  end
end

class C2 < C1 # 定义继承了C1的子类C2
  alias old_hello hello # 设定别名
  def hello
    "#{old_hello}, again."
  end
end

obj = C2.new
p obj.old_hello #=> "hello"
p obj.hello #=> "hello, again."