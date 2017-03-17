$stdout.print "out1 "; $stdout.flush
$stderr.print "err1 "
$stdout.print "out2 "; $stdout.flush
$stdout.print "out3 "; $stdout.flush
$stderr.print "err2\n"
$stdout.print "out4\n"

=begin
out1 err1 out2 out3 err2
out4
=end
