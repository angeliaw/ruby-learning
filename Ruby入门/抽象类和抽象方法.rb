##
# ruby语言本身并没有提供abstract class和abstract method机制

# 可以通过在调用方法时抛出NotImplementedError来防止方法被调用
class Shape2D
  def area
    raise NotImplementedError.new("#{self.class.name}#area是抽象方法")
  end
end

class Square < Shape2D
  def initialize(length)
    @length = length
  end

  def area
    @length ** 2
  end
end

##
# 把类的initialize方法这样处理
class Shape2D
  def initialize
    raise NotImplementedError.new("#{self.class.name}#area是抽象类")
  end

  def area
    raise NotImplementedError.new("#{self.class.name}#area是抽象方法")
  end
end


class Class
  def
  abstract(*args)
    args.each do |method_name|

      define_method(method_name) do |*args|
        if method_name == :initialize
          msg = "#{self.class.name}是抽象类"
        else
          msg = "#{self.class.name}##{method_name}是抽象方法"
        end
        raise NotImplementedError.new(msg)

      end
    end
  end
end

class Shape2D
  abstract :initialize,:area  #initialize和area是抽象方法
end