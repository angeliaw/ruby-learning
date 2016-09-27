## 时间与日期

puts "Current Time : " + Time.new.inspect

puts Time.now

start_time = Time.now

while (Time.now-start_time) < 10 do
  sleep(2)
  puts "testing...", Time.now
end


time = Time.new
puts time.year    # => Year of the date
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name