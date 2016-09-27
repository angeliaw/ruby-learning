##
# 如果发生异常程序停止。
# 例外是用来处理不同类型的程序执行过程中可能发生的错误，并采取适当的处理动作，而不是完全停止程序。

# rescue

begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  file = STDIN
end
print file, "==", STDIN, " \n"

##
# raise
# 使用raise语句引发异常
begin
  puts 'I am before the raise.'
  raise 'An error has occurred.'
  puts 'I am after the raise.'
rescue
  puts 'I am rescued.'
end
puts 'I am after the begin block.'

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

##
# ensure
# 有时候需要做一些处理，无论是否抛出一个异常，要保证在一个代码块的结束。
# 例如，可能有进入块上打开的一个文件，需要确保它被关闭，退出块。
# ensure 在 rescue 子句的后面，并包含一个代码块，将永远被执行块终止。
# 如果块退出正常，如果它会引发rescue 异常或者由未捕获的异常终止，ensure 块运行。

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end

# retry
begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  fname = "existant_file" # This block will capture all types of exceptions
  # retry # This will move control to the beginning of begin
end

##
# catch和throw：
# 虽然异常处理机制 raise 和 rescue 是非常适合放弃执行在出问题时，能够跳出一些深层嵌套的结构，再正常处理。
# 在catch定义一个块的标记给定的名称（这可能是一个符号或一个字符串）。该块正常执行，直到遇到抛出。

def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
  # ..
  # process information
end
promptAndGet("Name:")


##
# 类异常
# Interrupt
# NoMemoryError
# SignalException
# ScriptError
# StandardError
# SystemExit