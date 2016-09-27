##

# 空白符：在Ruby代码一般都忽略空白字符，例如空格和制表符，除非当它们出现在字符串中
# 程序行结尾： Ruby解释一个语句中以分号和换行符表示结束


##
# "Here Document" 是指建立多行字符串。继<<可以指定一个字符串或者一个标识符来终止字符串字面，当前行之后的所有行的终止符字符串的值。如果终止符是引用，引号的类型决定面向行的字符串常量的类型。注意<<终止符之间不能有空格。

print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF

# print <<"EOF"
#     This is the first way of creating
#     here document ie. multiple line string.
# EOF # same as above


print <<EOC  # execute commands
  echo hi there
  echo lo there
EOC

print <<"foo", <<"bar"  # you can stack them
	I said foo.
foo
	I said bar.
bar


puts "This is main Ruby Program"

##
# 声明代码被称为程序的结束。
END {
  puts "==========Terminating Ruby Program"
}

##
# 声明代码在程序运行之前被调用。
BEGIN {
  puts "==========Initializing Ruby Program"
}