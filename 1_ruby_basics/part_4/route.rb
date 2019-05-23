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
