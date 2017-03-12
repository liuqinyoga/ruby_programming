sum = 0
outcome = {"參加費" => 1000, "挂件費用" => 1000, "聯歡會費用" => 4000}
outcome.each do |pair|
  sum += pair[1]
end

puts "合計：#{sum}"