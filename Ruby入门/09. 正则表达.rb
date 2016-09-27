##
# 正则表达式是一个特殊的字符序列可以帮助匹配或者找到其他字符串或串套，使用的模式保持一个专门的语法。
# 正则表达式模式: 除控制字符， (+ ? . * ^ $ ( ) [ ] { } | ), 所有字符匹配。


string = "ruby testing Ruby testing yuewen ruby"
string.split.each do |s|
  puts s if s.match(/[Rr]uby/)
  puts s if s.match(/ruby/i)
  puts s if s.match(/ r u by /x)
end

puts "hello".gsub(/[aeiou]/, '*')    #=> "h*ll*"     #将元音替换成*号
puts "hello".gsub(/[^aeiou]/, '#')   #=> "#e##o"     #将非元音替换成#号
puts "hello".gsub(/([aeiou])/, '<\1>')  #=> "h<e>ll<o>"   #将元音加上尖括号,\1表示保留原有字符???

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";
puts "Line1 starts with Cats" if ( line1 =~ /Cats(.*)/ )
puts "Line2 starts with Dogs" if ( line2 =~ /Cats(.*)/ )


phone = "2004-959-559 #This is Phone Number"
num = phone.sub!(/#.*$/, "") # Delete Ruby-style comments
puts "Phone Num : #{num}"
str = phone.gsub!(/D/, "") # Remove anything other than digits
puts "Phone Num : #{str}"

str = 'i can see "button"'

digits = '112345 "testing" digits'
puts digits.match(/(\d+)/)

puts digits.gsub(/(\d+)/,'000000')  # => 000000 "testing" digits

puts digits.gsub(/(test*?)/,'ruby')
puts digits.gsub(/(test*)/,'ruby')
puts digits.gsub(/(test+)/,'ruby')
puts digits.gsub(/(test?)/,'ruby')
puts digits.gsub(/(.)/,'ruby')

puts digits.gsub(/(.*?)/,'ruby')

puts digits.gsub(/([^"]*)/,'ruby')  # => rubyruby"rubyruby"rubyruby
puts digits.gsub(/"([^"]*)"/,'ruby')  # => 112345 ruby digits


puts (/^用户可以打开(\d+)页书架上的每一本书查看$/)

##
=begin

正则表达式修饰符：
i	Ignore case when matching text.
o	Perform #{} interpolations only once, the first time the regexp literal is evaluated.
x	Ignores whitespace and allows comments in regular expressions
m	Matches multiple lines, recognizing newlines as normal characters
u,e,s,n	Interpret the regexp as Unicode (UTF-8), EUC, SJIS, or ASCII.If none of these modifiers is specified, the regular expression is assumed to use the source encoding.


可在Ruby的​​正则表达式语法。
模式	描述
^	Matches beginning of line.
$	Matches end of line.
.	Matches any single character except newline. Using m option allows it to match newline as well.
[...]	Matches any single character in brackets.
[^...]	Matches any single character not in brackets
re*	Matches 0 or more occurrences of preceding expression.
re+	Matches 1 or more occurrence of preceding expression.
re?	Matches 0 or 1 occurrence of preceding expression.
re{ n}	Matches exactly n number of occurrences of preceding expression.
re{ n,}	Matches n or more occurrences of preceding expression.
re{ n, m}	Matches at least n and at most m occurrences of preceding expression.
a| b	Matches either a or b.
(re)	Groups regular expressions and remembers matched text.
(?imx)	Temporarily toggles on i, m, or x options within a regular expression. If in parentheses, only that area is affected.
(?-imx)	Temporarily toggles off i, m, or x options within a regular expression. If in parentheses, only that area is affected.
(?: re)	Groups regular expressions without remembering matched text.
(?imx: re)	Temporarily toggles on i, m, or x options within parentheses.
(?-imx: re)	Temporarily toggles off i, m, or x options within parentheses.
(?#...)	Comment.
(?= re)	Specifies position using a pattern. Doesn't have a range.
(?! re)	Specifies position using pattern negation. Doesn't have a range.
(?> re)	Matches independent pattern without backtracking.
w	Matches word characters.
W	Matches nonword characters.
s	Matches whitespace. Equivalent to [	f].
S	Matches nonwhitespace.
d	Matches digits. Equivalent to [0-9].
D	Matches nondigits.
A	Matches beginning of string.
	Matches end of string. If a newline exists, it matches just before newline.
z	Matches end of string.
G	Matches yiibai where last match finished.
	Matches word boundaries when outside brackets. Matches backspace (0x08) when inside brackets.
B	Matches nonword boundaries.
, , etc.	Matches newlines, carriage returns, tabs, etc.
1...9	Matches nth grouped subexpression.
10	Matches nth grouped subexpression if it matched already. Otherwise refers to the octal representation of a character code.
=end