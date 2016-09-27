##
# Ruby：字符串处理函数

str = "testing ruby"
other_str = "ruby"

##
# 1.返回字符串的长度

puts str.length #=> integer

##
# 2.判断字符串中是否包含另一个串

puts str.include? other_str #=> true or false
puts "hello".include? "lo"   #=> true
puts "hello".include? "ol"   #=> false
puts "hello".include? ?h     #=> true

##
# 3.字符串插入:

# puts str.insert(index, other_str) #=> str
puts "abcd".insert(0, 'X')    #=> "Xabcd"
puts "abcd".insert(3, 'X')    #=> "abcXd"
puts "abcd".insert(4, 'X')    #=> "abcdX"
puts "abcd".insert(-3, 'X') #=> "abXcd"
puts "abcd".insert(-1, 'X')   #=> "abcdX"

##
# 4.字符串分隔,默认分隔符为空格

# str.split(pattern=$;, [limit]) #=> anArray
puts " now's the time".split        #=> ["now's", "the", "time"]
puts "1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
puts "hello".split(//)               #=> ["h", "e", "l", "l", "o"]
puts "hello".split(//, 3)            #=> ["h", "e", "llo"]
puts "hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]
puts "mellow yellow".split("ello")   #=> ["m", "w y", "w"]
puts "1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
puts "1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]

##
# 5.字符串替换

# puts str.gsub(pattern, replacement) #=> new_str
# puts str.gsub(pattern) {|match| block } #=> new_str
puts "hello".gsub(/[aeiou]/, '*')              #=> "h*ll*"     #将元音替换成*号
puts "hello".gsub(/([aeiou])/, '<\1>')         #=> "h<e>ll<o>"   #将元音加上尖括号,\1表示保留原有字符???
puts "hello".gsub(/./) {|s| s[0].to_s + ' '}   #=> "104 101 108 108 111 "

# 字符串替换二:
# puts str.replace(other_str) #=> str
s = "hello"         #=> "hello"
s.replace "world"   #=> "world"
puts s

##
# 6.字符串删除:

# puts str.delete([other_str]) #=> new_str
puts "hello".delete "l","lo"        #=> "heo"
puts "hello".delete "lo"            #=> "he"
puts "hello".delete "aeiou", "^e"   #=> "hell"
puts "hello".delete "ej-m"          #=> "ho"

##
# 7.去掉前和后的空格

# str.lstrip #=> new_str
puts " hello ".lstrip   #=> "hello "
puts "hello".lstrip       #=> "hello"

##
# 8.字符串匹配

# str.match(pattern)  #=> matchdata or nil

##
# 9.字符串反转

# str.reverse #=> new_str
puts "stressed".reverse   #=> "desserts"

##
# 10.去掉重复的字符

# str.squeeze([other_str]*) => new_str
puts "yellow moon".squeeze                  #=> "yelow mon" #默认去掉串中所有重复的字符
puts " now   is the".squeeze(" ")         #=> " now is the" #去掉串中重复的空格
puts "putters shoot balls".squeeze("m-z")   #=> "puters shot balls" #去掉指定范围内的重复字符

##
# 11.转化成数字

# str.to_i=> str
puts "12345".to_i             #=> 12345

##
# chomp和chop的区别:
# chomp:去掉字符串末尾的\n或\r
# chop:去掉字符串末尾的最后一个字符,不管是\n\r还是普通字符

puts "hello".chomp            #=> "hello"
puts "hello\n".chomp          #=> "hello"
puts "hello\r\n".chomp        #=> "hello"
puts "hello\n\r".chomp        #=> "hello\n"
puts "hello\r".chomp          #=> "hello"
puts "hello".chomp("llo")     #=> "he"

puts "string\r\n".chop   #=> "string"
puts "string\n\r".chop   #=> "string\n"
puts "string\n".chop     #=> "string"
puts "string".chop       #=> "strin"

