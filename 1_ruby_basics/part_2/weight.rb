puts "Подсчет идеального веса"
puts
print "Введите Ваше имя: "
name = gets.chomp
print "Введите Ваш рост (см): "
height = gets.chomp.to_i

weight = height - 110
puts
if weight > 0
  puts "#{name}, Ваш идеальный вес #{weight} кг!"
else 
  puts "#{name}, Ваш вес уже идеальный!"
end
