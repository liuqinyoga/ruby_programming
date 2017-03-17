# 1
puts "=== 1 ==="

=begin
def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path)
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i
          puts name
        end
      end
    end
  end
end

print_libraries
=end

p $:
p $LOAD_PATH

require "rbconfig"

def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path)
    dlext = RbConfig::CONFIG["DLEXT"]
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i || name =~ /\.#{dlext}$/i
          puts name
        end
      end
    end
  end
end

print_libraries


# 2
puts "=== 2 ==="

require 'find'

def du(path)
  result = 0
  Find.find(path) do |f|
    if File.file?(f)
      result += File.size(f)
    end
  end
  printf("%d %s\n", result, path)
  return result
end

du(ARGV[0] || ".")
