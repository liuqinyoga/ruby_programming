str = "http://www.liuqinyoga.com/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"

# #=>
# server address: www.liuqinyoga.compwd
