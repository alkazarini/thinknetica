alphabet = ('а'..'я')
vowels = {}

alphabet.each_with_index do |letter, index| 
  vowels[letter] =  index + 1 if ['а', 'е', 'ё', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'].include?(letter)
end

puts vowels
