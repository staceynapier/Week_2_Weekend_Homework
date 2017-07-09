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

end 