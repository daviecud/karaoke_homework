require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')
require_relative('../rooms.rb')
require_relative('../guests.rb')


class DrinkTest < Minitest::Test

def setup
  @drink = Drink.new("Lager", 4)
end

def test_drink_name
  assert_equal("Lager", @drink.name())
end

def test_drink_price
  assert_equal(4, @drink.price)
end


end
