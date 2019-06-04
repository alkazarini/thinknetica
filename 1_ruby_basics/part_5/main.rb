require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'cargo_wagon'
require_relative 'passenger_wagon'
require_relative 'route'
require_relative 'station'

stations_arr = []
trains_arr = []
routes_arr = []
wagons_arr = []

puts "01. Создать станцию\n
      02. Создать поезд\n
      03. Создать маршрут\n
      04. Добавить станцию к маршруту\n
      05. Удалить станцию из маршрута\n
      06. Назначить поезду маршрут\n
      07. Добавить вагон к поезду\n
      08. Убрать вагон из поезда\n
      09. Переместить поезд на станцию вперед\n
      10. Переместить поезд на станцию назад\n
      11. Просмотреть список станций\n
      12. Просмотреть список поездов на станции"

choice = gets.chomp.to_i

until choice == 15
  case choice
  when 1
    puts "Введите название станции: "
    station_name = gets.chomp
    stations_arr << Station.new(station_name)
    puts "Добавлена станция #{station_name}"
  when 2
    puts "Введите номер поезда: "
    number = gets.chomp
    puts "Введите тип поезда (пассажирский - 1, грузовой - 2): "
    type_train = gets.chomp.to_i
    trains_arr << PassengerTrain.new(number) if type_train == 1
    trains_arr << CargoTrain.new(number) if type_train == 2
  when 3
    puts "Введите первую станцию маршрута: "
    first_station = gets.chomp
    puts "Введите последнюю станцию маршрута: "
    last_station = gets.chomp
    routes_arr << Route.new(first_station, last_station)
  when 4
    puts "Выберите маршрут: "
    puts routes_arr
    route = gets.chomp.to_i
    puts "Введите станцию, которую нужно добавить"
    route.add_station(new_station)
  when 5
    puts "Выберите маршрут: "
    puts routes_arr

    puts "Выберите станцию: "
  when 6
    puts "Выберите поезд: "
    puts trains_arr
    train = gets.chomp.to_i
    puts "Выберите маршрут: "
    puts routes_arr
    route = gets.chomp.to_i
    train.take_route(route)
  when 7
    




    
  end
end