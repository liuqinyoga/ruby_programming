list = %w(a b c d)
list.each_with_index do |elem, i|
  print "No.", i+1, " element is ", elem, ".\n"
end

# #=>
# No.1 element is a.
# No.2 element is b.
# No.3 element is c.
# No.4 element is d