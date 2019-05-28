class  Train
  attr_reader :length, :type, :station, :number, :speed

  def initialize(number, type, length)
    @type = type
    @number = number
    @length = length
    @speed = 0
  end

  def speed_up
    @speed + 5
  end

  def speed_down
    @speed - 5 if @speed > 0
  end

  def stop
    @speed = 0
  end

  def add_wagon
    @length += 1 if @speed == 0
  end

  def delete_wagon
    @length -= 1 if @length > 0 && speed == 0
  end

  def take_route(route)
    @route = route.stations
    @station = route.stations.first
  end

  def move_forward
    @station = next_station if next_station
  end

  def move_backward
    @station = previous_station if previous_station 
  end

  def next_station
    @route[@route.index(@station) + 1] if @route.index(@station) -1 < @route.size
  end

  def previous_station
    @route[@route.index(@station) - 1] if @route.index(@station) - 1 >= 0 
  end
end
