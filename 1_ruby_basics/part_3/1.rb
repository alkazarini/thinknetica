months_days = { 'Январь': 31, 'Февраль': 28, 'Март':31, 'Апрель': 30,
                'Май': 31, 'Июнь':30, 'Июль':31, 'Август': 31,
                'Сетябрь':30, 'Октябрь':31, 'Ноябрь': 30, 'Декабрь':31 }

months_days.each { |months, days| puts months if days == 30 }
