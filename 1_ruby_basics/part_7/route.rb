require_relative './instance_counter.rb'
require_relative './validation.rb'

class Route
  include InstanceCounter
  include Validation
  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
    validate!
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

  protected

  def validate!
    validate_route!
  end

  def validate_route!
    raise "У маршрута должна быть начальная и конечная станции" if @stations.nil?
  end
end
