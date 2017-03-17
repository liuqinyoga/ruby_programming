# 1
wday = {
    "sunday" => "星期天",
    "monday" => "星期一",
    "tuesday" => "星期二",
    "wedensday" => "星期三",
    "thursday" => "星期四",
    "friday" => "星期五",
    "saturday" => "星期六",
}

puts wday
# puts wday.to_a
puts wday["sunday"]


# 2
p wday.size


# 3
%w(sunday monday tuesday wedensday thursday friday saturday).each do |day|
  puts "“#{day}”是#{wday[day]}。"
end


# 4
def str2hash(str)
  hash = Hash.new()
  array = str.split(/\s+/)
  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  return hash
end

p str2hash("bule 蓝 white 白\nred 红")
