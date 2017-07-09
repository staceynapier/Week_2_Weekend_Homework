require ('minitest/autorun')
require_relative ('../guests.rb')


class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("John")
    @guest2 = Guest.new("Keith")
    @guest3 = Guest.new("Alex")
  end

  def test_guest_has_name
    assert_equal("John", @guest1.name)
  end 

end