##
# Ruby是一个完美的面向对象编程语言。拥有面向对象的编程语言的功能，包括：
# 1、数据封装
# 2、数据抽象
# 3、多态性
# 4、继承

# 面向对象的数据和方法
# 数据结构是用来表达数据的，可作为输入或输出。
# 方法是做事情的，其有输入、执行逻辑、输出；
# 两者本质上是不同的东西，面向对象思想将他们放到一起，使得方法的作用被限制在某一个区域里

class Customer #名称应以首字母大写
  @@no_of_customers=0  # 类变量

  def initialize(id, name, addr) # 局部变量
    @cust_id=id                 # 实例变量
    @cust_name=name             # 实例变量
    @cust_addr=addr             # 实例变量
  end

  ##
  # 类的成员函数
  # 方法关键字def开始,关键字end表示结束,方法名最后是小写字母
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end

  def total_no_of_customers()
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
  end
end

##
# 自定义方法来创建Ruby对象
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

##
# 调用方法
cust1.total_no_of_customers()
cust2.total_no_of_customers()

##
# <--------------------------------------------------------------------------------------------------------->
# - 1、数据封装 Encapsulation  :把对象的行为和属性装在一个类里
# - 2、数据抽象 Abstract : 对现实世界的一种抽象,从实际的人、物、事和概念中抽取所关心的共同特性
# - 3、多态性 polymorphism :多态就是允许方法重名, 参数或返回值可以是父类型传入或返回。
# 把不同的子类对象都当作父类来看，可以屏蔽不同子类对象之间的差异，写出通用的代码，做出通用的编程，以适应需求的不断变化。
# 赋值之后，父类型的引用就可以根据当前赋值给它的子对象的特性以不同的方式运作。也就是说，父亲的行为像儿子，而不是儿子的行为像父亲。
# - 4、继承 inherit : 用 < 实现继承

class Person
  attr_accessor :age, :gender

  def have_breakfast
    puts "class Person method"
  end

  def language
    raise NotImplementedError.new("#{self.class.name}#language是抽象方法")
  end
end

class Teacher < Person
  def language
    puts "teacher's language"
  end
end

class Student < Person
  attr_accessor :grade, :major

  def method_a
    puts "class Student method a"
  end

  def self.method_b
    puts "class Student method b"
  end

  def language
    puts "student's language"
  end
end

##
# 类的实例化
p = Person.new
stu = Student.new
teacher = Teacher.new
stu.age = 18
stu.gender = 'girl'
stu.grade = 3

puts stu.age
puts stu.grade

##
# p.language  #直接调用会报:Person#language是抽象方法 (NotImplementedError)
puts stu.language
puts teacher.language


##
# 自动生成属性的读写操作attr_*
# attr_reader	#读方法
# attr_reader  :age
def age
  @age
end

# attr_writer	#写方法
# attr_writer :price
def age= (age)
  @age=age
end

# attr_accessor	#产生读写方法
# att_accessor :age
def age
  @age
end

def age= (age)
  @age=age
end

##
# attr	#产生读方法和可选的写方法(如果第二个参数是true)
# example:
# attr :age        #参见attr_reader
# attr :age, true  # 参见attr_accessor

# <--------------------------------------------------------------------------------------------------------->
# 模块 module
# 类和模块都是对象，模块是一个特定类的对象；
# 类是类Class的实例，而模块是类Module的实例；
# Ruby不支持多继承，但可以通过include方法将模块引入类；

module ModuleA
  def name
    puts "moduleA method name"
  end
end

class Person
  include(ModuleA)
  # def name
  #   puts "class Person method name"
  # end
end
##
# 当使用include方法将模块引入类是,Ruby悄悄地创建了一个单例类并将它插入体系中,这个匿名的不可见类被链向这个模块,因此它们贡献了实例方法和常量。

class Customers < Person
  def name
    puts "class Customers method name"
  end
end

##
# BasicObject
#     Kernel
#        Object
#           ModuleA
#              Person
#                 Customer

puts Person.superclass
puts Object.superclass

person = Person.new
person.name

customer = Customers.new
puts customer.respond_to?(:name)
customer.name

##
# 模块永远不会重载类的方法。

class Students
  def name
    puts "class Students method name"
  end

  def gender
    puts "class Students method gender"
  end
end

class PrimaryStudents < Students
  include(ModuleA)
end
ps = PrimaryStudents.new
ps.name
ps.gender