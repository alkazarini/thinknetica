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
quantity = gets.chomp.to_f

goods[name] = { a: price, b: quantity }
end

system "clear" 
goods.each do |name, price_quantity|
  sum = price_quantity[:a] * price_quantity[:b] 
  print name + '  ' + price_quantity[:a].to_s + '  ' +  price_quantity[:b].to_s + '  Сумма: ' + sum.to_s
  puts
  basket_sum += sum
end

puts "\nОбщая сумма покупок: #{basket_sum}"   
