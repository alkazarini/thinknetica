require_relative 'train'

class PassengerTrain < Train
  def initialize(number)
    super
    @type = 0
  end
end
