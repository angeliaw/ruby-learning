##
# if ... else
x=1
if x > 2
  puts "x is greater than 2"
elsif x <= 2 and x!=0
  puts "x is 1"
else
  puts "I can't guess the number"
end
#运行结果: x is 1

##
# if
print "testing\n" if x < 2
print "testing\n" unless x > 2

##
# 与下面的unless实现达到了相同的目的
if x>2
  puts "x is greater than 2"
else
  puts "x is less than 2"
end

##
# unless
x=1
unless x>2
  puts "x is less than 2"
else
  puts "x is greater than 2"
end
#运行结果: x is less than 2

##
# statement
x>2 ? puts "x is greater than 2" : puts "x is less than 2"

##
#case语句
def check_platform(platform)
  case platform.downcase
    when "ios"
      puts "platform is ios"
    when "android"
      puts "platform is android"
    else
      puts "unsupport platform"
  end
end
platform = 'iOS'
check_platform(platform)


##
# while 语句
$i = 0
$num = 5

while $i < $num  do
  puts("Inside the loop i = #$i" )
  $i +=1
end

##
# while
# 如果while 修饰符紧跟一个begin 语句但是没有 rescue 或 ensure 子句, 代码被执行前一次条件求值。
$i = 0
$num = 5
begin
  puts("Inside the loop i = #$i" )
  $i +=1
end while $i < $num

##
# until 语句
$i = 0
$num = 5
until $i > $num  do
  puts("Inside the loop i = #$i" )
  $i +=1;
end

##
# until
$i = 0
$num = 5
begin
  puts("Inside the loop i = #$i" )
  $i +=1;
end until $i > $num

##
# for .. in 循环
for i in 0..5
  puts "Value of local variable is #{i}"
end

##
# break
for i in 0..5
  if i > 2 then
    break
  end
  puts "Value of local variable is #{i}"
end

##
# next
for i in 0..5
  if i < 2 then
    next
  end
  puts "Value of local variable is #{i}"
end

# redo
for i in 0..5
  if i < 2 then
    puts "Value of local variable is #{i}"
    redo
  end
end

##
# retry
for i in 1..5
  retry if  i > 2
  puts "Value of local variable is #{i}"
end