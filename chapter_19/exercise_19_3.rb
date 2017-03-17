# encoding: utf-8

str = '鿋'

encoding = [Encoding::GB18030, Encoding::GBK]
encoding.each do |enc|
  begin
    print "将str转换为#{enc}。=> "
    puts "结果: %p" % [str.encode(enc)]
  rescue => ex
    p ex
  end
  puts
end

=begin
Remarks:
将UTF-8字符串“鿋”分别转换为GB1830编码以及GBK编码。由于GBK编码并没有收录该汉字，因此在转换时会产生错误。
=end
