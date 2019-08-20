require_relative './instance_counter.rb'
require_relative './validation.rb'

class Station
  include InstanceCounter
  include Validation
  attr_reader :train_list, :name

  @@stations = []

  def initialize(name)
    @name = name
    @train_list = []
    validate!
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

  protected

  def validate!
    raise "Некорректное имя станции. Должно быть не менее 3 символов." if @name !~ /^[\w]{3,}$/i
  end
end
