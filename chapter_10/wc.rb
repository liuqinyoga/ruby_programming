ltotal = 0 # 行數合計
wtotal = 0 # 單詞數合計
ctotal = 0 # 字數合計

ARGV.each do |file|
  begin
    input = File.open(file) # 打開文件(A)
    l = 0 # file的行數
    w = 0 # file的單詞數
    c = 0 # file的字數
    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "") # 刪除首行空白
      ary = line.split(/\s+/) # 用空白符分解
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file) # 整理輸出格式
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex
    print ex.message, "\n" # 輸出異常信息(B)
  end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")

# 20       17       94 demo.rb
# 20       17       94 total
