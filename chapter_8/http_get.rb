require 'net/http'
require 'uri' # URI 库
# url = URI.parse("http://www.ruby-lang.org/ja/")
url = URI.parse("http://liuqinyoga.com/")
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc

p url.scheme
p url.host
p url.port
p url.path
p url.to_s
