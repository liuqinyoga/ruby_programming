p Time.now
# sleep 1
p Time.now

t = Time.now
p t
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.usec

p t.to_i
p t.to_s

# mktime
puts "=== mktime ==="
t = Time.mktime(2017, 3, 1, 12, 01, 01)
p t
p t.to_s


# strftime
puts "=== strftime ==="
t = Time.now
p t.to_s
p t.strftime("%Y-%m-%d %H:%M:%S %z")
p t.strftime("%a %b %d %H:%M:%S %z %Y")

# RFC2822
puts "=== RFC2822 ==="
require 'time'

t = Time.now
p t.rfc2822
# p t.rfc822

puts "=== iso8601 ==="
p t.iso8601
puts "=== localtime ==="
p t.localtime
puts "=== utc ==="
p t.utc

puts "=== Time.parse ==="
p Time.parse("2017-03-01 12:01:01 +0800")

puts "=== Date.parse ==="
require 'date'
p Date.parse("Mon Mar 20 11:27:11 +0800 2017")
p Date.parse("Mon Mar 20 11:27:11 JST 2017")
p Date.parse("H25.05.30")

=begin
=== Date.parse ===
#<Date: 2017-03-20 ((2457833j,0s,0n),+0s,2299161j)>
#<Date: 2017-03-20 ((2457833j,0s,0n),+0s,2299161j)>
#<Date: 2013-05-30 ((2456443j,0s,0n),+0s,2299161j)>
=end
