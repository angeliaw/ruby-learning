##
# 无参数方法
def method_a
   puts "method a"
end

##
# 接受参数的方法
def method_b(var1, var2)
  puts "method_b variables var1 is #{var1}"
  puts "method_b variables var1 is #{var2}"
end
##
# 可以为参数设置默认值，如果方法调用时未传递必需的参数则使用默认值：
def method_c(var1="defaut"); print "method_c..."+var1+"\n"; end

method_a
method_b("testing", "ruby")
method_c
method_c("change default")
##
# 从方法返回值
def method_return
  a = 10
  b = 11
  c = 12 # 最后一行会作为返回值
end

def method_return_all
  a = 10
  b = 11
  c = 12
  return a, b, c
end

puts method_return
print method_return_all
##
# Ruby中的方法名结尾可以跟?和!。一般来说，以?结尾的方法返回布尔值；以!结尾的方法提示危险性。
def empty?

end


# 可变数量的参数
# TBD

##
# 类方法
# 当方法定义在类的外部，方法默认标记为 private。另一方面，如果方法定义在类中的，则默认标记为 public。
# 当你想要访问类的方法时，您首先需要实例化类。然后，使用对象，您可以访问类的任何成员。
# 方法默认的可见性和 private 标记可通过模块（Module）的 public 或 private 改变。

##
# Ruby 提供了一种不用实例化即可访问方法的方式。让我们看看如何声明并访问类方法：
class Accounts
  def reading_charge
    puts "私有方法"
  end

  def Accounts.return_date
    puts "类方法: return_date"
  end
end

Accounts.return_date

##
# 特定对象的方法
account = Accounts.new

def account.return_time
  puts "特定对象的方法: return time"
end

account.return_time

##
# 重定义方法
class Person
  def get_age
    puts "get_age...1"
  end

  def get_age
    puts "get agae...2"
  end
end

Person.new.get_age  # 后面的定义会覆盖前面的定义

##
# 重新打开类
# 我们一般不要拆开类的定义，因为那样不好理解，拆开类的一个原因是将它们分散到多个文件里。
class Person
  def say
    puts "hi"
  end
end

class Person
  def bye
    puts "goodbye"
  end
end

p = Person.new
p.say
p.bye

