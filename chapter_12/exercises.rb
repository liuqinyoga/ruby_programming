puts "ex.1..."

def cels2fahr(cels)
  fahr = cels * 9.0 / 5.0 + 32.0
  return fahr
end

p cels2fahr(1.2)

puts "\nex.2..."

def fahr2cels(fahr)
  return (fahr.to_f - 32) * 5.0 / 9.0
end

p fahr2cels(50)

1.upto(100) do |i|
  print i, "  ", fahr2cels(i).round(2), "\n"
end


puts "\nex.3..."

def dice
  return rand(6) + 1
end

p dice


puts "\nex.4..."

def dice10
  ret = 0
  10.times do
    ret += dice
  end
  return ret
end

p dice10


puts "\nex.5..."

def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

# p prime?(1)
# p prime?(2)
# p prime?(3)
# p prime?(10)

11.times do |i|
  p "#{i} is prime? #{prime?(i)}"
end

# ex.5...
# "0 is prime? false"
# "1 is prime? false"
# "2 is prime? true"
# "3 is prime? true"
# "4 is prime? false"
# "5 is prime? true"
# "6 is prime? false"
# "7 is prime? true"
# "8 is prime? false"
# "9 is prime? false"
# "10 is prime? false"