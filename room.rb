class Room

attr_reader :name
attr_accessor :songs, :guests, :room_fee, :cash_balance

  def initialize(name, room_fee)
    @name = name
    @songs = []
    @guests = []
    @room_fee = room_fee
    @cash_balance = 0
  end

  def add_guests(guest)
    @guests << guest
      
  end

  def remove_guests
    @guests.clear
  end

  def add_songs(song)
    @songs << song
  end

  def too_many_guests
    if (@guests.count > 3) 
      return "Room full"
    else 
      return "More people can join"
    end
  end

end 