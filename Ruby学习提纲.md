#### Ruby学习提纲

1. Ruby环境的安装和卸载
2. 开发工具Sublime 或 TextMate 2 或 RubyMine(IDE) 或任一文本编辑器
3. Ruby所需要的工具
4. 基础语法：BEGIN, END, 注释, 运算符...
5. 控制结构
6. 类Class和对象Object，变量，方法
7. 异常处理
8. 模块Module 和混合类型 Mixin
9. 字符串String、数组Array、哈希Hash、区间(Ranges)
10. Block 和迭代器 each/collect
11. 文件I/O
12. 正则表达式
13. 连接数据库
14. 元编程
15. Ruby内置函数
16. 多线程
17. 解析XML
18. 解析JSON
19. Ruby风格

##### 从 Python 到 Ruby:
http://www.ruby-lang.org/zh_cn/documentation/ruby-from-other-languages/to-ruby-from-python/

相似点:
Ruby 与 Python 一样的地方……

有交互式命令解释器（叫做 irb）。
可以在命令行阅读文档（使用 ri 命令代替 Python 的 pydoc）。
没有特殊的行终结符（除了通常的换行符）。
与 Python 的三个引号类似，字符串字面量可以跨越多行。
方括号用于列表，大括号用于字典（Ruby 中叫做 哈希）。
数组操作相同（数组相加，会得到一个长数组；a3 = [a1, a2] 会得到一个二维数组）。
对象是强、动态类型。
一切皆是对象，变量只是对象的引用。
尽管关键字有些许不同，但异常处理方式是一致的。
拥有嵌入式文档工具（Ruby 的工具叫 rdoc）。
同样好地支持函数式编程，比如：一级类型函数，匿名方法和闭包。


相异点:
Ruby 与 Python 不同的地方……

字符串是可变类型。
可以新建常量（无意改变的变量）。
有一些强制习惯用法（例如：类名以大写字母开头，变量以小写字母开头）。
只有一种列表容器，且是可变类型。
双引号字符串可以转义（像 \t），有特殊的“替代表达式”语法（不用像 "字符串" + "相" + "加"这样，允许插入 Ruby 表达式结果到其他字符串）。单引号字符串与 Python 的 r"原始字符串" 一样。
没有什么“新式”或者“旧式”类定义写法。只有一种写法（ Python 3 以上的版本没有这个问题，但不能向下兼容 Python 2）。
不能直接访问属性。但在 Ruby 中，一切皆方法调用。
方法调用的括号是可选的。
有 public、private、protected 三种强制的访问控制类型，不像 Python 里面是用变量名加下划线表示。
“混入（mixins）”替代多重继承。
你可以增加或修改内置类的方法。俩语言都允许你随时打开、修改类，但 Python 无法修改内置类，Ruby 无此限制。
true 和 false 代替 True 和 False（nil 代替 None）。
判断真值时，只有 false 和 nil 当做假值。其余一切皆为真（包括 0、 0.0、 "" 和 []）。
elsif 代替了 elif
require 替代 import。其他情况，使用相同。
通常，代码之上（而不是之下的字符文档）的注释用来生成文档。
虽然有很多语法糖需要记忆、学习，这也使得 Ruby 非常有趣且有效率。
变量设置后无法取消（类似 Python 的 del 声明）。你可以将其重置为 nil 让 GC 回收旧的内容，但它仍然存在于符号表中。
yield 关键字作用是不一样的。在 Python 中，它会记住上一次返回时在函数体中调用的位置。外部代码有责任继续执行函数。而在 Ruby 中，yield 会执行作为方法最后一个参数传入的方法，然后立即执行。
Python 支持一种匿名函数，lambdas。而 Ruby 支持 blocks，Procs 和 lambdas。



##### 从 Java 到 Ruby:
http://www.ruby-lang.org/zh_cn/documentation/ruby-from-other-languages/to-ruby-from-java/

相似点:
Ruby 与 Java 一样的地方……

垃圾回收器帮你管理内存。
强类型对象。
有 public、 private 和 protected 方法。
拥有嵌入式文档工具（Ruby 的工具叫 rdoc）。rdoc 生成的文档与 javadoc 非常相似。


相异点:
Ruby 与 Java 不同的地方……

你不需要编译你的代码。你只需要直接运行它。
有几个不同的流行的第三方GUI工具包。Ruby 用户可以尝试 WxRuby、 FXRuby、 Ruby-GNOME2、 Qt 或 Ruby 内置的 Tk。
定义像类这样的东西时，可以使用 end 关键字，而不使用花括号包裹代码块。
使用 require 代替 import。
所有成员变量为私有。在外部，使用方法获取所有你需要的一切。
方法调用的括号通常是可选的，经常被省略。
一切皆对象，包括像 2 和 3.14159 这样的数字。
没有静态类型检查。
变量名只是标签。它们没有相应的类型。
没有类型声明。按需分配变量名，及时可用（如：a = [1,2,3] 而不是 int[] a = {1,2,3};）。
没有显式转换。只需要调用方法。代码运行之前，单元测试应该告诉你出现异常。
使用 foo = Foo.new("hi") 创建新对象，而非 Foo foo = new Foo("hi")。
构造器总是命名为“initialize” 而不是类名称。
作为接口的替代，你将获得“混入（mixins）”。
相比 XML，倾向于使用 YAML。
nil 替代 null。
Ruby 对 == 和 equals() 的处理方式与 Java 不一样。测试相等性使用 ==（Java 中是 equals()）。测试是否为同一对象使用 equals?()（Java 中是 ==）。