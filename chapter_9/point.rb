class Point
  attr_accessor :x, :y

  def initialize(x = 0, y = 0)
    @x, @y = x, y
  end

  def inspect # 用于显示
    "(#{x}, #{y})"
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def +@
    dup # 返回自己的副本
  end

  def -@
    self.class.new(-x, -y) # 颠倒x,y各自的正负
  end

  def ~@
    self.class.new(-y, x) # 使坐标翻转90度
  end

  def [](index)
    case index
      when 0
        x
      when 1
        y
      else
        raise ArgumentError, "out of range `#{index}`" # 主動抛出異常
    end
  end

  def []=(index, val)
    case index
      when 0
        self.x = val
      when 1
        self.y = val
      else
        raise ArgumentError, "out of range `#{index}`"
    end
  end
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1
p point0 + point1
p point0 - point1

# #=>
# (3, 6)
# (1, 8)
# (4, 14)
# (2, -2)

point = Point.new(3, 6)
p +point
p -point
p ~point

# #=>
# (3, 6)
# (-3, -6)
# (-6, 3)

point = Point.new(3, 6)
p point[0]
p point[1]
p point[1] = 2
p point[1]
# p point[2]

# #=>
# 3
# 6
# 2
# 2
# out of range `2` (ArgumentError)