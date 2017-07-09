class Room

attr_reader :name
attr_accessor :songs, :guests

  def initialize(name)
    @name = name
    @songs = []
    @guests = []
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