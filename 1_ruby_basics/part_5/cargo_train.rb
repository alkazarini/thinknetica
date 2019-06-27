require_relative 'train'

class CargoTrain < Train
  def initialize(number)
    super
    @type = "Грузовой"
  end
end
