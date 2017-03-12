def total2(from, to, &block) # &block 为 Proc的参数
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end
  return result
end

p total2(1, 10)
p total2(1, 10) { |num| num ** 2 }

# #=>
# 55
# 385