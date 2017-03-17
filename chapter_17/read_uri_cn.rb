require 'open-uri'

# 通過 HTTP 讀取數據
url = "http://www.liuqinyoga.com/"
options = {
    "Accept-Language" => "zh-cn, en; q=0.5",
}
open(url, options) do |io|
  puts io.read
end