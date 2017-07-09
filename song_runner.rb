require_relative('./song.rb')
require_relative('./room.rb')
require_relative('./guests.rb')

room = Room.new("Gold")

guests = Guests.new(["John", "Keith", "Alex"])

@song1 = Song.new("Gold", "Spandau Ballet")
@song2 = Song.new("Goldeneye", "Tina Turner")
@song3 = Song.new("Gold Digger", "Kanye West")

# what room would you like to enter?
