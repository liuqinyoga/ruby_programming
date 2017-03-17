$stdout.sync = true # 同步輸出處理
$stdout.print "out1 "
$stderr.print "err1 "
$stdout.print "out2 "
$stdout.print "out3 "
$stderr.print "err2\n"
$stdout.print "out4\n"

=begin
out1 err1 out2 out3 err2
out4
=end
