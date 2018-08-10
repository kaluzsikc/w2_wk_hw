require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../ccc")
require_relative("../rooms")
require_relative("../guests")

class CccTest < MiniTest::Test

  def setup
    @ccc = Ccc.new("room1")
  end

  def test_ccc_has_rooms
    assert_equal("room1", @ccc.rooms)
  end

  
end
