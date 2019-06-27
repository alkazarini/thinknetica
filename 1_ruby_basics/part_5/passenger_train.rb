require_relative 'train'

class PassengerTrain < Train
  def initialize(number)
    super
    @type = "Пассажирский"
  end
end
