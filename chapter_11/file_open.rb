file = File.open("../chapter_10/demo.rb") do |file|
  file.each_line do |line|
    print line
  end
end

# file.close  # 已包含在代码块中