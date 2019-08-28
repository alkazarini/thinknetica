require_relative './manufacturer.rb'
require_relative './instance_counter.rb'
require_relative './validation.rb'

class Train
  include Manufacturer
  include InstanceCounter
  include Validation
  attr_reader :length, :type, :station, :number, :speed

  @@trains = []

  def initialize(number)
    @number = number
    @speed = 0
    @wagons = []
    validate!
    @@trains << self
  end

  def self.find(number)
    @@trains[number + 1]
  end

  def speed_up
    @speed + 5
  end

  def speed_down
    @speed - 5 if @speed.positive?
  end

  def stop
    @speed = 0
  end

  def add_wagon(wagon)
    @wagons << wagon if @type == wagon.type && @speed.zero?
  end

  def delete_wagon
    @wagons.delete_at.last if speed.zero?
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
    @route[@route.index(@station) + 1] if @route.index(@station) - 1 < @route.size
  end

  def previous_station
    @route[@route.index(@station) - 1] if @route.index(@station) - 1 >= 0
  end

  def to_s
    [number, type].join(" > ")
  end

  protected

  def validate!
    validate_number!
  end

  def validate_number!
    raise "Формат номера поезда: три латинские буквы или цифры, необязательный дефис и две латинские буквы или цифры" if @number !~ /^[a-z\d]{3}-?[a-z\d]{2}$/i
  end
end
