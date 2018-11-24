require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')

class TestGuests < Minitest::Test

  def setup
    @guest = Guests.new("Ally", 110, "Trouble in Mind")
  end

  def test_guest_name()
    assert_equal("Ally", @guest.name)
  end

  def test_wallet_amount
    assert_equal(110, @guest.wallet)
  end

  def test_favourite_song
    assert_equal("Trouble in Mind", @guest.song)
  end

  def test_cheer_for_fav_song()
    result = @guest.get_favourite_song()
    assert_equal("Trouble in Mind", result)
  end

end
