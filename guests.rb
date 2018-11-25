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

# def pay_entry_fee()
#   pay_fee = @wallet.shift()
#   return pay_fee
# end

def buy_drink(drink)
  @wallet -= drink.price()
end

end
