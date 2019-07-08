require_relative './instance_counter.rb'

class Station
  include InstanceCounter
  attr_reader :train_list, :name

  @@stations = []

  def initialize(name)
    @name = name
    @train_list = []
    @@stations << self
  end

  def arrival(number)
    @train_list.push(number)
  end

  def departure(number)
    @train_list.delete(number)
  end

  def train_list_type(type)
    @train_list.select { |train| train.type == type }
  end

  def to_s
    name
  end

  def self.all
    @@stations
end
