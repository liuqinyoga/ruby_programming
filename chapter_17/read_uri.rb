require 'open-uri'

# 通過 HTTP 讀取數據
url = "http://www.liuqinyoga.com/"
open(url) do |io|
  puts io.read
end