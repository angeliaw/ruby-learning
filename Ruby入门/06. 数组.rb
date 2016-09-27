##
# Ruby的数组是由放置对象引用方括号之间用逗号分隔的一系列字面。逗号结尾被忽略

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
  puts i
end