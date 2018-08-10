require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("song1")
    @song2 = Song.new("song2")
    @song3 = Song.new("song3")
    @song4 = Song.new("song4")
    @song5 = Song.new("song5")
    @song6 = Song.new("song6")

    songs = [@song1, @song2, @song3, @song4, @song5, @song6]
    @room = Room.new("room1", 10, 5, 9, songs)
  end

  def test_room_has_name
    assert_equal("room1", @room.name)
  end

  def test_room_has_spaces
    assert_equal(10, @room.spaces)
  end

  def test_room_has_fee
    assert_equal(5, @room.fee)
  end

  def test_room_has_guests
    assert_equal(9, @room.guests)
  end

  def test_room_has_songs
    assert_equal(6, @room.songs.count)
  end

  def test_add_guest_to_room
    @room.add_guest_to_room(1)
    assert_equal(10, @room.guests)
  end

  def test_remove_guest_from_room
    @room.remove_guest_from_room(1)
    assert_equal(8, @room.guests)
  end

  def test_room_full_false
    assert_equal(false, @room.too_many_guests?(@guest1))
  end

  def test_room_full_true
      @room.add_guest_to_room(1)
      @room.add_guest_to_room(1)
      @room.add_guest_to_room(1)
      assert_equal(true, @room.too_many_guests?(@guest1))
  end

end
