require_relative 'train'

class CargoTrain < Train
  def initialize(number)
    super
    @type = 0
  end
end
