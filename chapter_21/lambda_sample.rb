prc = lambda do |a, b, c|
  p [a, b, c]
end

prc[1, 2, 3]
# prc[1, 2]


puts "=== lambda ==="
square = ->(n) { return n ** 2 }
p square[5]


puts "=== to_proc ==="
p %w(42 39 56)
p %w(42 39 56).map { |i| i.to_i }
p %w(42 39 56).map(&:to_i)
p [Integer, String, Array, Hash, File, IO].sort_by(&:name)

puts "=== is lambda ==="
prcl = Proc.new { |a, b| a + b }
p prcl.lambda?

prcl = lambda { |a, b| a+ b }
p prcl.lambda?