def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given? # 如果有块的话
      result += yield(num)
    else
      result += num
    end
  end
  return result
end

p total(1, 10) #=> 55
p total(1, 10) { |num| num ** 2 } #=> 385