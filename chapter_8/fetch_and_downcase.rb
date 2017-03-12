# 鸭子类型 duck typing
def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase
  end
end

# 数组
ary = ["Boo", "Foo", "Woo"]
p fetch_and_downcase(ary, 0) #=> "boo"
p fetch_and_downcase(ary, 1)
p fetch_and_downcase(ary, 2)

# 散列
hash = {0 => "Boo", 1 => "Foo", 2 => "Woo"}
p fetch_and_downcase(hash, 0)
p fetch_and_downcase(hash, 1)
p fetch_and_downcase(hash, 2)