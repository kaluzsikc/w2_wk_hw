require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("song1")
  end

  def test_song_has_title
    assert_equal("song1", @song.title)
  end

end
