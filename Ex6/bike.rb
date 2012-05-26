require_relative 'vehicle'
class Bike < Vehicle
  attr_reader :dealer
  def initialize name, price, dealer
    super name, price
    @dealer = dealer
  end
  def to_s
    super+", Dealer : #{dealer}"
  end
end
bike = Bike.new "pulsar", 50_000, "Honda"
bike.price = 70_000
puts bike
