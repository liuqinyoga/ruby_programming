str = "ABC\nDEF\nGHI"
p /DEF.GHI/ =~ str
p /DEF.GHI/m =~ str

# #=>
# nil
# 4

/C./ =~ "ABCDEF"
p $`
p $&
p $'

# #=>
# "AB"
# "CD"
# "EF"

# sub  gsub
str = "abc   def   g\t    hi\n"
p str.sub(/\s+/, ' ')
p str.gsub(/\s+/, ' ')


str = "adfadfsadf"
nstr = str.sub(/.a/) do |matched|
  '<' + matched.upcase + '>'
end
p nstr
#=> "ad<FA>dfsadf"

nstr = str.gsub(/.a/) do |matched|
  '<' + matched.upcase + '>'
end
p nstr
#=> "ad<FA>df<SA>df"
