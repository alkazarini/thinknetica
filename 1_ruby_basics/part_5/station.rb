class Station
  attr_reader :train_list, :name

  def initialize(name)
    @name = name
    @train_list = []
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
end
