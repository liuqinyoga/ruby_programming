# 1
def get_local_and_domain(str)
  str =~ /^([^@]+)@(.*)$/
  localpart = $1
  domain = $2
  return [localpart, domain]
end

p get_local_and_domain("info@example.com")
#=> ["info", "example.com"]


# 2
s = "正则表达式真难啊，怎么这么难懂！"
puts s.gsub(/难懂/, "易懂").gsub(/难/, "简单")
#=> 正则表达式真简单啊，怎么这么易懂！


# 3
def word_capitalize(str)
  return str.split(/\-/).collect { |w| w.capitalize }.join('-')
end

p word_capitalize("in-reply-to")
p word_capitalize("X-MAILER")

# #=>
# "In-Reply-To"
# "X-Mailer"