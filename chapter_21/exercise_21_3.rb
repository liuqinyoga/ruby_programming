def acc
  total = 0
  Proc.new do |x|
    total += x
  end
end

a = acc
p a.call(1)
p a.call(2)
p a.call(3)
p a.call(4)

=begin
1
3
6
10
=end
