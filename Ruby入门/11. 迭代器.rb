##
# 块 block
# 块与方法一个很大的区别是块支持闭包
min = 18
array.select do |v|
  v >= min #访问外层min变量
end


##
# 迭代器
sum = 0
(1..5).each {|i| sum += i}
puts "Sum="+sum.to_s

# 也可以使用for语句
sum = 0
for i in 1..5  #
  sum += i
end
puts "Sum="+sum.to_s

##
# 索引
languages = ['Ruby', 'Javascript', 'Java']
languages.each_with_index do |lang, i|
  puts "#{i}, I love #{lang}!"
end


# times
5.times {print "testing.."}




