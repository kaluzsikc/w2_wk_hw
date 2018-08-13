require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../guests")
require_relative("../songs")
require_relative("../rooms")

class GuestTest < MiniTest::Test

  def setup

    @room = Room.new("room1", 100, 50, 10, "song1")

    @guest = Guest.new("guest1", 100)

  end

  def test_guest_has_name
    assert_equal("guest1", @guest.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest.money)
  end

  def test_guest_can_buy_ticket_decrease_money
    skip
    @guest.buy_ticket(@room)
    assert_equal(95, @guest.money())

    # @guest.buy_ticket(@room.fee)
    # assert_equal(95, @guest.money())
  end

  def test_guest_has_enough_money_for_fee_true
    assert_equal(true, @guest.sufficient_money?(@room))
  end

  def test_guest_has_enough_money_for_fee_false
    @guest.buy_ticket(@room)
    @guest.buy_ticket(@room)
    @guest.buy_ticket(@room)
    assert_equal(false, @guest.sufficient_money?(@room))
  end
end
