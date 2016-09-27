##
=begin

四种类型的变量：

局部变量: 局部变量是在一个方法中定义的变量。局部变量是不可用方法外。局部变量一般以小写字母或_开头。
实例变量: 实例变量是可跨越任何特定实例或对象的方法。这意味着，从对象到对象的实例变量改变。
         实例变量前面加上@，跟着变量名。
类变量：类变量是可在各种不同的对象。 一个类变量属于类，是类的一个特点。他们前面的符号@@跟着的变量名。
全局变量: 类变量是不能跨类。如果想要一个单一的变量可以跨类，需要定义一个全局变量。全局变量的前面总是用美元符号（$）

=end


# 全局变量:
# 全局变量以$开头。未初始化的全局变量的值是零，赋值会改变全局状态
$global_variable = 10

class Class1
  def print_global
    puts "Global variable in Class1 is #$global_variable"
    #在Ruby中，用一个哈希号（＃）字符放在任意变量或常量之前能够访问它的值。
  end
end

class Class2
  def print_global
    puts "Global variable in Class2 is #$global_variable"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

##
# 实例变量：实例变量@开始。未初始化的实例变量的值是零，并产生警告-w选项。

# 类变量：类变量以@@开始
# 在方法定义之前必须初始化。引用未初始化的类变量产生错误。类变量之间共享其中的类变量定义的类或模块的的后代
class Customer
  @@no_of_customers=0

  def initialize(id, name, addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end
  def display_details()
    @details = "details from another method"
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end
  def total_no_of_customers()
    @@no_of_customers += 3
    puts "Total number of customers: #@@no_of_customers"
    puts "#@details"
  end
end

##
# Create Objects
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
##
# Call Methods
cust1.display_details
cust2.display_details
cust1.total_no_of_customers()
cust2.total_no_of_customers()

##
# 局部变量:
# 局部变量以小写字母或_开头。一个局部变量的范围的范围类，模块，def或做相应的结束或块的左花括号的紧密括号{}。
# 当一个未初始化的局部变量被引用，它被解释为没有参数的方法调用。
# 分配未初始化的局部变量也作为变量声明。变量开始存在，直到结束的当前范围内到达。局部变量的生命周期由Ruby进行解析程序时才能确定。