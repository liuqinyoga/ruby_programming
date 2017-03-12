file = File.open("../chapter_10/demo.rb")
# file.each_line do |line|
# file.each_char do |line|
file.each_byte do |line|
  print line
end
file.close