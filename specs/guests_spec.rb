require ('minitest/autorun')
require_relative ('../guests.rb')


class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("John", 100)
    @guest2 = Guest.new("Keith", 150)
    @guest3 = Guest.new("Alex", 200)
  end

  def test_guest_has_name
    assert_equal("John", @guest1.name)
  end 

  def test_guest_has_cash
    assert_equal(200, @guest3.cash)
  end

 

end