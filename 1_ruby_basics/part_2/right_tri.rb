print "Введите первую сторону треугольника: "
first = gets.chomp.to_f
print "Введите вторую сторону треугольника: "
second = gets.chomp.to_f
print "Введите третью сторону треугольника: "
third = gets.chomp.to_f

puts
if first == second && first == third
  puts "Треугольник равнобедренный и равносторонний, но не прямоугольный."
  exit
end

result = ((first > second && first > third) && (first**2 == second**2 + third**2)) || \
         ((second > first && second > third) && (second**2 == first**2 + third**2)) || \
         ((third > first && third > second) && (third**2 == first**2 + second**2))

if result
  print "Треугольник прямоугольный"
  else print "Треугольник не прямоугольный"
end

if first == second || first == third || second == third
	print " и равнобедреный"
end
puts "."
