puts "eg.break:"
i = 0
["perl", "python", "ruby", "schema"].each do |lang|
  i += 1
  if i == 3
    break # 跳出循环
  end
  p [i, lang]
end

puts "eg.next:"
i = 0
["perl", "python", "ruby", "schema"].each do |lang|
  i += 1
  if i == 3
    next # 跳过，进行下一步
  end
  p [i, lang]
end

puts "eg.redo:"
i = 0
["perl", "python", "ruby", "schema"].each do |lang|
  i += 1
  if i == 3
    redo # 在相同条件下重复刚才的处理过程
  end
  p [i, lang]
end

# eg.break:
# [1, "perl"]
# [2, "python"]
# eg.next:
# [1, "perl"]
# [2, "python"]
# [4, "schema"]
# eg.redo:
# [1, "perl"]
# [2, "python"]
# [4, "ruby"]
# [5, "schema"]