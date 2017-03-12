ary = %w{
  Ruby is a open source programming language with a focus on simplicity and productivity.
}

call_num = 0 # 块的调用次数
sorted = ary.sort do |a, b|
  call_num += 1
  a.length <=> b.length
end

puts "排序结果 #{sorted}"
puts "数组的元素数量 #{ary.length}"
puts "调用块的次数 #{call_num}"

sorted2 = ary.sort_by { |item| item.length }
p sorted2