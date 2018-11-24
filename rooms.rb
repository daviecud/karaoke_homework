class Rooms

attr_accessor :name, :capacity, :till

def initialize(name, capacity, till)
  @name = name
  @capacity = capacity
  @till = till
  @guests = []
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

def add_guest_to_room(guest)
  @guests << guest
end

def remove_guest_from_room(guest)
  @guests.delete(guest)
end

def check_room_is_full(capacity)
  if capacity -= @capacity
    return true
  else
    return false
  end
end
end
