require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../drink.rb')
require_relative('../songs.rb')

class TestRooms < Minitest::Test

def setup
  @drink1 = Drink.new("Lager", 4)
  @drink2 = Drink.new("Wine", 3)
  @drink3 = Drink.new("Jaigermiester", 5)
  drinks = [@drink1, @drink2, @drink3]
  @guest1 = Guests.new("Muddy Waters", 200, "Got My Mojo Back")
  @guest2 = Guests.new("Aretha Franklin", 1000, "Respect")
  @guest3 = Guests.new("Bob Dylan", 25, "Subteranean Homesick Blues")
  guests = [@guest1, @guest2, @guest3]
  @room1 = Rooms.new("The Blue's", 20, 190, 5, drinks)
  @room2 = Rooms.new("The 90's", 25, 200, 6, drinks)
  @room3 = Rooms.new("The 60's", 22, 50, 4, drinks)
  @room4 = Rooms.new("The 70's", 21, 120, 3, drinks)
  rooms = [@room1, @room2, @room3, @room4]
  @songs = Songs.new("You Can't Touch This")
  @rooms = Rooms.new(rooms, 20, 190, 5, drinks)
end

def test_room_name
  assert_equal("The Blue's", @room1.name)
end

def test_capacity_of_room
  assert_equal(20, @rooms.capacity)
end

def test_till_amount
  assert_equal(190, @rooms.till)
end

def test_count_guests
  guests = @rooms.count_guests
  assert_equal(0, guests)
end

def test_add_guest_to_room
  room_guest = Guests.new("Bob Dylan", 25, "Subteranean Homesick Blues")
  @room1.add_guest_to_room(room_guest)
  assert_equal(1, @room1.count_guests)
end

def test_remove_guest_from_room
  room_guest = Guests.new("Aretha Franklin", 1000, "Respect")
  @room1.remove_guest_from_room(room_guest)
  assert_equal(0, @room1.count_guests)
end

def test_add_song_to_room
  song = Songs.new("You Can't Touch This")
  @rooms.add_song_to_room(song)
  assert_equal(1, @rooms.count_songs)
end

def test_if_room_is_full
  capacity = @rooms.check_room_is_full(18)
  assert_equal(true, capacity)
end

def test_room_has_drinks
  assert_equal(3, @rooms.drinks().length())
end

def test_serve_guest_drink
  @room1.guest_buy_drink(@guest1, @drink1)
  assert_equal(196, @guest1.wallet())
  assert_equal(194, @room1.till())
end

# def test_take_entry_fee
#   #arrange
#    # room_fee = Rooms.new("The Blue's", 20, 190, 5, drinks)
#    # guest = Guests.new("Mick jagger", 196, "Tumbling Dice")
#   #act
#   @rooms.take_entry_fee(@guest1, @rooms.fee)
#   #assert
#   assert_equa19l(5, @rooms.till())
#   assert_equal(195, @guest1.wallet())
#   # @rooms.take_entry_fee(room_fee)
#   # assert_equal()
# end
# def test_guest_pays_entry_fee
#   @rooms.guest_pays_fee(@guest1, @rooms.fee)
# assert_equal(195, @guest.wallet())
# assert_equal(195, @rooms.till())
# end




end
