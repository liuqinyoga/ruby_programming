# 1
def wc(file)
  nline = nword = nchar = 0
  File.open(file) { |io|
    io.each { |line|
      words = line.split(/\s+/).reject { |w| w.empty? }
      nline += 1
      nword += words.length
      nchar += line.length
    }
  }
  puts "lines=#{nline} words=#{nword} chars=#{nchar}"
end

# wc(__FILE__)
wc("hello.txt")


# 2
# 首先是文件逆序排列。用IO#readlines方法逐行读取文件后，
# 再用IO#rewind方法返回文件开头，用IO#truncate方法清空内容，
# 最后用Array#reverse方法将逆序后的行写入文件。

def reverse(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines.reverse.join()
  end
end

# reverse(ARGV[0])
p reverse("hello.txt")

# 接下来是输出第1行的内容，实际上只需稍微修改一下上面的程序即可实现。

def reverse2(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines[0]
  end
end

# reverse2(ARGV[0])

# 最后是输出最后一行的内容，这里稍微组合了一下（a）（b）的程序。

def reverse3(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines.reverse[0]
  end
end

# reverse3(ARGV[0])


# 3
def tail(lines, file)
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue.push(line)
      if queue.size > lines
        queue.shift
      end
    end
  end
  queue.each { |line| print line }
end

puts "==="
tail(10, __FILE__)

puts "==="
tail(3, __FILE__)
