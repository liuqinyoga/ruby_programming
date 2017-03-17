# encoding: EUC-JP
require 'nkf'

euc_str = "euc string"
utf8_str = euc_str.encode("utf-8")
utf8_str2 = NKF.nkf("-E, -w, -xm0", euc_str)

p euc_str
p utf8_str
p utf8_str2