tags = ["A", "IMG", "PRE"]

tags.each do |tagname|
  case tagname
    when "P", "A", "I", "B", "BLOCKQUOTE"
      puts "#{tagname} has child."
    when "IMG", "BR"
      puts "#{tagname} has no child."
    else
      puts "#{tagname} connot be used."
  end
end


# A has child.
# IMG has no child.
# PRE connot be used.