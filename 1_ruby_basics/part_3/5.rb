last_days = [31,28,31,30,31,30,31,31,30,31,30,31]
count_days = 0
x = 0

puts "Введите день: "
day = gets.to_i
puts "Введите месяц: "
month = gets.to_i
puts "Введите год: "
year = gets.to_i

if ((year % 4 == 0 and year % 100 != 0) || (year % 400 == 0))
  v_year = true
else
  v_year = false
end

last_days[1] = 29 if v_year

while x < month - 1
  count_days += last_days[x]
  x += 1
end
count_days += day

puts "Кол-во дней от начала #{'високосного ' if v_year}года - #{count_days}"
  


  
