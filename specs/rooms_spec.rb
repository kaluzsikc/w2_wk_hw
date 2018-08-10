require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("room1", 100, 5, 10, "song1")
  end

  def test_room_has_name
    assert_equal("room1", @room.name)
  end

  def test_room_has_spaces
    assert_equal(100, @room.spaces)
  end

  def test_room_has_fee
    assert_equal(5, @room.fee)
  end

  def test_room_has_guests
    assert_equal(10, @room.guests)
  end

  def test_room_has_songs
    assert_equal("song1", @room.songs)
  end
end
