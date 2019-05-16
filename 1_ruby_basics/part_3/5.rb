last_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts "Введите день: "
day = gets.to_i
puts "Введите месяц: "
month = gets.to_i
puts "Введите год: "
year = gets.to_i

last_days[1] = 29 if ((year % 4 == 0 and year % 100 != 0) || (year % 400 == 0))

puts "Кол-во дней от начала #{ 'високосного ' if last_days[1] == 29 }года - #{ last_days.take(month-1).sum + day }"
