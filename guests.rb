class Guests

  attr_accessor :name, :wallet, :song

  def initialize(name, wallet, song)
    @name = name
    @wallet = wallet
    @song = song
  end

def get_guest_name
  return @name
end

def get_wallet_amount
  return @wallet
end

def get_favourite_song
  return @song
end

def cheer_for_fav_song()
  result = @song.collect { |song| song.name == name}
  return "Whoo I love this song!!"
end


end
