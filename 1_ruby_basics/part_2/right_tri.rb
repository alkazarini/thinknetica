print "Введите первую сторону треугольника: "
first = gets.chomp.to_f
print "Введите вторую сторону треугольника: "
second = gets.chomp.to_f
print "Введите третью сторону треугольника: "
third = gets.chomp.to_f
puts

a, b, c = [first, second, third].sort

if a == b && a == c
  puts "Треугольник равнобедренный и равносторонний, но не прямоугольный."
  exit
end

if c**2 == a**2 + b**2
  print "Треугольник прямоугольный"
  else print "Треугольник не прямоугольный"
end

if a == b
  print " и равнобедреный"
end

puts "."
