# encoding: UTF-8

names = ["小二", "zhang san", "li si", "忍者神龟", "变形金刚"]

names.each do |name|
  if /s/ =~ name
    p name
  end
end