File.open("hello.txt") do |io|
  p io.read(5)
  p io.read
end

File.open("hello.txt").each_line { |io| puts io.to_s }

puts "\n"

size = $stdout.write("hello.\n")
p size

puts "\n"

File.open("hello.txt") do |io|
  p io.read(5)
  p io.pos
  io.pos = 5
  p io.gets
end
