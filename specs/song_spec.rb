require ('minitest/autorun')
require_relative ('../song.rb')


class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Gold", "Spandau Ballet")
    @song2 = Song.new("Goldeneye", "Tina Turner")
    @song3 = Song.new("Gold Digger", "Kanye West")
    @song4 = Song.new("Hi Ho Silver Lining", "Jeff Beck")
    @song5 = Song.new("Silver Springs", "Fleetwood Mack")
    @song6 = Song.new("Silver Bells", "Twisted Sister")

    # @playlist = [@song1, @song2, @song3, @song4, @song5, @song6]

  end

  def test_song_has_title
    assert_equal("Gold", @song1.title)
  end

  def test_song_has_artist
    assert_equal("Spandau Ballet", @song1.artist)
  end

end