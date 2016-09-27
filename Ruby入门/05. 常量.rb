##
# 常量：
# 常量以大写字母开头。在类或模块定义的常量可以在该类或模块访问，在外部定义的常量,类或模块可以全局访问。
# 常量不能定义在方法内。引用未初始化的常数会产生一个错误。分配已初始化一个常数会产生一个警告。

class Example
  VAR1 = 100
  VAR2 = 200
  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end

##
# Create Objects
object=Example.new()
object.show

##
# 拟变量：

=begin
self: 当前方法的接收方对象。

true: 表示真的值。

false: 表示假的值。

nil: 表示未定义（undefined）的值.

__FILE__: 在当前源文件的名称.

__LINE__: 在源文件中的当前行号。

=end
