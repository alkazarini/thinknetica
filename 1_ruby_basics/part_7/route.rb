require_relative './instance_counter.rb'

class Route
  include InstanceCounter
  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_station(station)
    @stations.delete(station)
  end

  def to_s
    [@stations].join(' > ')
  end
end
