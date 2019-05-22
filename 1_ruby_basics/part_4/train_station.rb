class  Train
  attr_accessor :speed, :route, :parked
  attr_reader :length, :type, :station, :number

  def initialize(number, type, length)
    @type = type
    @number = number
    @length = length
    @speed = 0
    puts "Создан новый поезд №#{@number}."
  end

  def speed_up
    @speed + 5
    puts "Скорость поезда увеличена на 5 км/ч."
  end

  def speed_down
    @speed - 5
    puts "Скорость поезда понижена на 5 км/ч."
  end

  def stop
    if @speed = 0
      puts "Поезд уже стоит."
    esle
      @speed = 0
      puts "Поезд остановлен."
    end
  end

  def add_wagon
    if @speed == 0
      @length += 1
      puts "Добавлен 1 вагон. Теперь в поезде #{@length} вагонов."
    else
      puts "Поезд движется. Нельзя добавить вагон."
    end
  end

  def delete_wagon
    if @speed == 0 && length > 0
      @length -= 1
      puts "Убран 1 вагон. Теперь вагонов #{@length}."
    else
      puts "Поезд движется или у него нет вагонов. Нельзя убрать вагон."
    end
  end

  def train_route

class Route
  attr_accessor :route
  
  def initialize(first,last)
    @route = [first,last]
  end

  def add_station(station)
    route.insert(-2, station)
  end

  def remove_station(station)
    route.delete(station)
  end

  def list
    @route
  end

  def first
    route.first
  end

  def last
    route.last
  end
end

class Station

  attr_accessor :train_list, :name_station

  def initialize(name)
    @station_name = name
    @train_list = []
    puts "Вы создали станцию #{name}."
  end

  def arrival(train)
    train.parked = true
    train_list.push(train)
    puts "Поезд #{train.number} прибыл на станцию #{name_station}."
  end

  def departure(train)
    train.parked = false
    train.speed = 50
    train_list.delete(train)
    puts "Поезд #{train.number} отправился со станции #{name_station}."
  end

  def train_list_type
    train_list.each_do |train|
      cargo  += 1 if train.type == 1
      passenger += 1 if train.type == 2
    end
    puts "На станции: #{cargo} грузовых и #{passenger} пассажирских поездов."
  end


  end





