class Station

  attr_accessor :train_list, :station_name

  def initialize(name)
    @station_name = name
    @train_list = []
    puts "Вы создали станцию #{name}."
  end

  def arrival(train)
    train_list.push(train)
    puts "Поезд #{train} прибыл на станцию #{station_name}."
    self
  end

  def departure(train)
    train_list.delete(train)
    puts "Поезд #{train} отправился со станции #{station_name}."
    self
  end

  def train_list_type
      cargo, passenger = 0, 0
    train_list.each do |train|
      cargo  += 1 if train.type == 1
      passenger += 1 if train.type == 2
    end
    puts "На станции: #{cargo} грузовых и #{passenger} пассажирских поездов."
  end
end
