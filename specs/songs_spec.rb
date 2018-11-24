require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < Minitest::Test



def setup
  @songs = Songs.new("Trouble in Mind")
end

def test_song_name()
songs_name = @songs.get_song_name()
assert_equal("Trouble in Mind", songs_name)
end


end
