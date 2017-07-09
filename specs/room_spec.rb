require('minitest/autorun')
require_relative('../room')
require_relative('../guests')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Gold", "Spandau Ballet")
    @song2 = Song.new("Goldeneye", "Tina Turner")
    @song3 = Song.new("Gold Digger", "Kanye West")

    @guest1 = Guest.new("John")
    @guest2 = Guest.new("Keith")
    @guest3 = Guest.new("Alex")

    

    @room1 = Room.new("Gold room")
  end

  def test_room_name
    assert_equal("Gold room", @room1.name)
  end

  def test_add_guests
    assert_equal(1, @room1.add_guests(@guest1).count)
  end

  def test_remove_guests
    @room1.add_guests(@guest2)
    assert_equal(0, @room1.remove_guests.count)
  end

  def test_add_songs_to_room
    assert_equal(1, @room1.add_songs(@song1).count)
  end



  def test_too_many_guests
    
    @guest1 = Guest.new("John")
    @guest2 = Guest.new("Keith")
    @guest3 = Guest.new("Alex")
    @guest4 = Guest.new("George")
    
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    @room1.add_guests(@guest3)
    @room1.add_guests(@guest4)

    assert_equal("Room full", @room1.too_many_guests)
  end

end