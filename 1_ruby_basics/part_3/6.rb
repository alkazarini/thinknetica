sum = 0
basket_sum = 0
goods = {}

loop do
system "clear"
puts "Введите название товара: "
name = gets.chomp
break if name.downcase == 'stop'
puts "Введите цену за ед.: "
price = gets.chomp.to_f
puts "Введите кол-во товара: "
qty = gets.chomp.to_f

goods[name] = { pr: price, q: qty }
end

system "clear" 
goods.each do |name, prq|
  sum = prq[:pr] * prq[:q] 
  print name + '  ' + prq[:pr].to_s + '  ' +  prq[:q].to_s + '  Сумма:' + sum.to_s
  puts
  basket_sum += sum
end

puts "\nОбщая сумма покупок: #{basket_sum}"   


