##
# Ruby创建哈希放置括号之间的键/值对列表，以逗号或序列=>之间的键和值。逗号结尾被忽略。

colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh = colors
hsh.each do |key, value|
  print key, " is ", value, "\n"
end