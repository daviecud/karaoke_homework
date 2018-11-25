class Rooms

attr_accessor :name, :capacity, :till, :fee, :drinks

def initialize(name, capacity, till, fee, drinks)
  @name = name
  @capacity = capacity
  @till = till
  @fee = fee
  @drinks = drinks
  @guests = []
  @songs = []
end

def get_room_name
  return @name
end

def get_capacity_of_room
  return @capacity
end

def get_till_amount
  return @till
end

def count_guests
  return @guests.size()
end

def count_songs
  return @songs.size()
end

def add_song_to_room(song)
  @songs << song
end

def add_guest_to_room(guest)
  @guests << guest
end

def remove_guest_from_room(guest)
  @guests.delete(guest)
end

def check_room_is_full(capacity)
  if capacity <= @capacity
    return true
  else
    return false
  end
end

def room_has_drinks
  return @drinks.length
end

# def take_entry_fee(guest, room_fee)
#   if @rooms.find(room_fee)
#     guest.buy(room_fee)
#   @till += room_fee.fee()
#   # entry_fee = room_fee.pay_entry_fee()
#   # get_till_amount(entry_fee)
# end
# end

# def guest_pays_fee(guest, fee)
#   fee = @rooms
#   @guest1.pay_entry_fee()
#   @till += fee
# end

def guest_buy_drink(guests, drink)
  if @drinks.include?(drink)
    guests.buy_drink(drink)
    @till += drink.price
end
end

end
