print "Введите a: "
a = gets.chomp.to_f
print "Введите b: "
b = gets.chomp.to_f
print "Введите c: "
c = gets.chomp.to_f
puts

d = b**2 - (4 * a * c)

if d > 0
   x1 = (-b + Math.sqrt(d)) / (2 * a)
   x2 = (-b - Math.sqrt(d)) / (2 * a)
   puts "Уравнение имеет два корня #{x1} и #{x2}, дискриминант #{d}"

elsif d == 0
   x1 = -b / 2 * a
   puts "Уравнение имеет один корень #{x1}, дискриминант #{d}"

else 
   puts "Корней нет, дискриминант #{d}"

end
