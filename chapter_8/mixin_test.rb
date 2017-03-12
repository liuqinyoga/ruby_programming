module M
  def meth
    "meth"
  end
end

module M1
  def sunday
    "sunday"
  end
end

module M2
  def monday
    "monday"
  end
end

module M3
  include M2

  def week
    "week"
  end
end

class C
  include M

  # include M1
  # include M3

  include M1
  include M2
  include M3
  include M1
end

c = C.new
p c.meth #=> "meth"

p C.include?(M) #=> true

# p C.ancestors  #=> [C, M, Object, Kernel, BasicObject]
# p C.ancestors  #=> [C, M3, M2, M1, M, Object, Kernel, BasicObject]
p C.ancestors #=> [C, M3, M2, M1, M, Object, Kernel, BasicObject]
p C.superclass #=> Object