require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')

class TestRooms < Minitest::Test

def setup
  @rooms = Rooms.new("The Blue's", 20, 190)
  @guest1 = Guests.new("Muddy Waters", 200, "Got My Mojo Back")
end

def test_room_name
  assert_equal("The Blue's", @rooms.name)
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
  room_guest = Guests.new("Bob Dylan", 25, "Subterrain Blues")
  @rooms.add_guest_to_room(room_guest)
  assert_equal(1, @rooms.count_guests)
end

def test_remove_guest_from_room
  room_guest = Guests.new("Aretha Franklin", 1000, "Respect")
  @rooms.remove_guest_from_room(room_guest)
  assert_equal(0, @rooms.count_guests)
end

def test_if_room_is_full
  capacity = @rooms.check_room_is_full(18)
  assert_equal(true, capacity)
end

end
