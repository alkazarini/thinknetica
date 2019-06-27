require_relative './train.rb'
require_relative './cargo_train.rb'
require_relative './passenger_train.rb'
require_relative './cargo_wagon.rb'
require_relative './passenger_wagon.rb'
require_relative './route.rb'
require_relative './station.rb'

stations_arr = []
trains_arr = []
routes_arr = []
wagons_arr = []

def list_array(arr)
  arr.each.with_index(1) do |item, index|
    puts "#{index}: #{item}"
  end
end

puts "01. Создать станцию\n02. Создать поезд\n03. Создать маршрут\n04. Добавить станцию к маршруту\n05. Удалить станцию из маршрута\n06. Назначить поезду маршрут\n07. Добавить вагон к поезду\n08. Убрать вагон из поезда\n09. Переместить поезд на станцию вперед\n10. Переместить поезд на станцию назад\n11. Просмотреть список станций\n12. Просмотреть список поездов на станции\n13. Выход"

choice = gets.chomp.to_i

until choice == 13
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
    list_array(routes_arr)
    idx = gets.chomp.to_i
    route = routes_arr[idx - 1]
    puts "Введите станцию, которую нужно добавить: "
    new_station = gets.chomp
    route.add_station(new_station)
  when 5
    puts "Выберите маршрут: "
    list_array(routes_arr)
    idx = gets.chomp.to_i
    route = routes_arr[idx - 1]
    puts "Выберите станцию для удаления: "
    list_array(route.stations)
    idx = gets.chomp.to_i
    del_station = route.stations[idx - 1]
    route.remove_station(del_station)
  when 6
    puts "Выберите поезд: "
    list_array(trains_arr) 
    idx = gets.chomp.to_i
    train = trains_arr[idx - 1]
    puts "Выберите маршрут: "
    list_array(routes_arr)
    idx = gets.chomp.to_i
    route = routes_arr[idx - 1]
    train.take_route(route)
  when 7
    puts "Введите номер поезда: "
    list_array(trains_arr)
    train = trains_arr[gets.chomp.to_i - 1]
    puts train
    puts "Выберите тип вагона: "
    wagon = gets.to_i
    case wagon
    when 1
      train.add_wagon(PassengerWagon.new)
    when 2
      train.add_wagon(CargoWagon.new)
    end
  when 8
    puts "Введите номер поезда: "
    train = gets.chomp.to_i
    puts "Введите номер вагона: "
    wagon = gets.to_i
    train.delete_wagon(train.wagons[wagon])
  when 9
    puts "Введите номер поезда: "
    train = gets.chomp.to_i
    puts "Станция: #{train.next_station}"
    train.move_forward
  when 10
    puts "Введите номер поезда: "
    train = gets.chomp.to_i
    puts "Станция: #{train.previous_station}"
    train.move_backward
  when 11
    list_array(stations_arr)
  when 12
    list_array(trains_arr)
  end

  choice = gets.chomp.to_i
end

