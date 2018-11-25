class Drink

attr_reader :name, :price

def initialize(name, price)
  @name = name
  @price = price
end

def check_drink_name
  return @name
end

def check_drink_price
  return @price
end

end
