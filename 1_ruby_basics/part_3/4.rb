puts ('а'..'я').to_a.map!.with_index { |letter, idx| [letter.to_sym, idx + 1] if ['а', 'е', 'ё', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'].include?(letter) }.compact!.to_h
