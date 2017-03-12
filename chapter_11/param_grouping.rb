hash = {a: 100, b: 200, c: 300}
hash.each_with_index do |(key, value), index| # yield([key, value], index)
  p [key, value, index]
end

# [:a, 100, 0]
# [:b, 200, 1]
# [:c, 300, 2]