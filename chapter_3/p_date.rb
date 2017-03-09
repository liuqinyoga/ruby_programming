require 'date'

# days = Date.today - Date.new(1993, 2, 24)
days = Date.new(2007, 3, 12) - Date.new(1988, 12, 10)
puts(days.to_i) # => 6666
