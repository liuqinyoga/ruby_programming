=begin
下面是利用文具万年历的原理整理的日历。2月30日等不存在的日期，
与月末的日期进行比较后就会弹起来（跳到下一个月）。
另外，在表格中不存在的日期，
为了让它们遇到相同的条件时也能弹起来，我们将它们的初始值设为99。
=end

require "date"

module Calendar
  WEEK_TABLE = [
      [99, 99, 99, 99, 99, 99, 1, 2, 3, 4, 5, 6, 7],
      [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
      [9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
      [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28],
      [23, 24, 25, 26, 27, 28, 29, 30, 31, 99, 99, 99, 99],
      [30, 31, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99],
  ]

  module_function

  def cal(year, month)
    first = Date.new(year, month, 1) # 被指定的月的1号
    end_of_month = ((first >> 1) - 1).day # 次月的1号的前1天
    start = 6 - first.wday # 表示在表格的哪个位置

    puts first.strftime("%B %Y").center(21)
    puts " Su Mo Tu We Th Fr St"
    WEEK_TABLE.each do |week|
      buf = ""
      week[start, 7].each do |day|
        if day > end_of_month
          buf << "   "
        else
          buf << sprintf("%3d", day)
        end
      end
      puts buf
    end
  end
end

t = Date.today
Calendar.cal(t.year, t.month)

=begin
     March 2017
 Su Mo Tu We Th Fr St
                   1   2   3    4
  5   6   7   8    9  10 11
 12 13 14 15 16 17 18
 19 20 21 22 23 24 25
 26 27 28 29 30 31
=end
