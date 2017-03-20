=begin
先删除以“.”开始的文件，再利用File.mtime方法取得时间后排序。
最后输出文件名以及日期。
=end

def ls_t(path)
  entries = Dir.entries(path) # 获取入口
  entries.reject! { |name| /^\./ =~ name } # 删除文件名以"."开始的文件

  mtimes = Hash.new # 边收集mtime边排序
  entries = entries.sort_by do |name|
    mtimes[name] = File.mtime(File.join(path, name))
  end

  entries.each do |name|
    printf("%-40s %s\n", name, mtimes[name]) # 输入文件名以及mtime
  end
rescue => ex
  puts ex.message
end

ls_t(ARGV[0] || ".")