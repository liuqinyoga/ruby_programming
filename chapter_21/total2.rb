def total2(from, to, &block)
  result = 0 # 合計值
  from.upto(to) do |num| # 處理從from到to的值
    if block # 如果有塊的話
      result +=
          block.call(num)
    else
      result += num
    end
  end
  return result # 返回方法的結果
end

puts "=== from .. to ==="
p total2(1, 10)

puts "=== block ==="
p total2(1, 10) { |num| num ** 2 }