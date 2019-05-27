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
    @station = next_station
  end

  def move_backward
    @station = previous_station
  end

  def next_station
    (@route.index(@station) + 1) != nil ? (@route[@route.index(@station) + 1]) : (@station)
  end

  def previous_station
    (@route.index(@station) - 1) > 0 ? (@route[@route.index(@station) - 1]) : (@station)
  end
end