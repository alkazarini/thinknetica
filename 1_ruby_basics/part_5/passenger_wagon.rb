require_relative './manufacturer.rb'

class PassengerWagon
  include Manufacturer
  attr_reader :type

  def initialize
    @type = :passenger
  end
end
