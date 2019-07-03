require_relative './train.rb'
require_relative './cargo_train.rb'
require_relative './passenger_train.rb'
require_relative './cargo_wagon.rb'
require_relative './passenger_wagon.rb'
require_relative './route.rb'
require_relative './station.rb'

class Main
  def initialize
    @stations_arr = []
    @trains_arr = []
    @routes_arr = []
  end

  def new_station
    puts "Введите название станции: "
    station_name = gets.chomp
    @stations_arr << Station.new(station_name)
    puts "Добавлена станция #{station_name}"
  end

  def new_train
    puts "Введите номер поезда: "
    number = gets.chomp
    puts "Введите тип поезда (пассажирский - 1, грузовой - 2): "
    type_train = gets.chomp.to_i
    @trains_arr << PassengerTrain.new(number) if type_train == 1
    @trains_arr << CargoTrain.new(number) if type_train == 2
  end

  def new_route
    puts "Введите первую станцию маршрута: "
    first_station = gets.chomp
    puts "Введите последнюю станцию маршрута: "
    last_station = gets.chomp
    @routes_arr << Route.new(first_station, last_station)
  end

  def add_route_station
    puts "Выберите маршрут: "
    list_array(@routes_arr)
    route = @routes_arr[gets.chomp.to_i - 1]
    puts "Введите станцию, которую нужно добавить: "
    new_station = gets.chomp
    route.add_station(new_station)
  end

  def remove_route_station
    puts "Выберите маршрут: "
    list_array(@routes_arr)
    route = @routes_arr[gets.chomp.to_i - 1]
    puts "Выберите станцию для удаления: "
    list_array(route.stations)
    del_station = route.stations[gets.chomp.to_i - 1]
    route.remove_station(del_station)
  end

  def train_take_route
    puts "Выберите поезд: "
    list_array(@trains_arr)
    train = @trains_arr[gets.chomp.to_i - 1]
    puts "Выберите маршрут: "
    list_array(@routes_arr)
    route = @routes_arr[gets.chomp.to_i - 1]
    train.take_route(route)
  end

  def train_add_wagon
    puts "Введите номер поезда: "
    list_array(@trains_arr)
    train = @trains_arr[gets.chomp.to_i - 1]
    puts "Выберите тип вагона (1 - пассажирский, 2 - грузовой): "
    wagon = gets.to_i
    case wagon
    when 1
      train.add_wagon(PassengerWagon.new)
    when 2
      train.add_wagon(CargoWagon.new)
    end
  end

  def train_remove_wagon
    puts "Введите номер поезда: "
    list_array(@trains_arr)
    train = @trains_arr[gets.chomp.to_i - 1]
    train.delete_wagon
  end

  def train_move_forward
    puts "Введите номер поезда: "
    list_array(@trains_arr)
    train = @trains_arr[gets.chomp.to_i - 1]
    train.move_forward
    puts "Станция: #{train.station}"
  end

  def train_move_backward
    puts "Введите номер поезда: "
    list_array(@trains_arr)
    train = @trains_arr[gets.chomp.to_i - 1]
    train.move_backward
    puts "Станция: #{train.station}"
  end

  def instructions
    puts " 1. Создать станцию\n 2. Создать поезд\n 3. Создать маршрут\n 4. Добавить станцию к маршруту"
    puts " 5. Удалить станцию из маршрута\n 6. Назначить поезду маршрут\n 7. Добавить вагон к поезду"
    puts " 8. Убрать вагон из поезда\n 9. Переместить поезд на станцию вперед\n10. Переместить поезд на станцию назад"
    puts "11. Просмотреть список станций\n12. Просмотреть список поездов на станции\n13. Выход"
    puts
  end

  def menu

    choice = 0

    until choice == 13
      system "clear"
      instructions
      choice = gets.chomp.to_i
      case choice
      when 1
        new_station
      when 2
        new_train
      when 3
        new_route
      when 4
        add_route_station
      when 5
        remove_route_station
      when 6
        train_take_route
      when 7
        train_add_wagon
      when 8
        train_remove_wagon
      when 9
        train_move_forward
      when 10
        train_move_backward
      when 11
        list_array(@stations_arr)
      when 12
        list_array(station.train_list)
      end
      puts "\nНажмите любую клавишу..."
      gets
    end
  end

  private

# Метод приватный, так как используется только в классе Main
  def list_array(arr)
    arr.each.with_index(1) do |item, index|
      puts "#{index}: #{item}"
    end
  end
end

execute = Main.new
execute.menu