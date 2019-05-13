puts "Подсчет площади треугольника"
puts
print "Введите основание треугольника: "
base = gets.chomp.to_i
print "Введите высоту треугольника: "
height = gets.chomp.to_i

area = 0.5 * base * height

puts "Площадь треугольника: #{area}"
