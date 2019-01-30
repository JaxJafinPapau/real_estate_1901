require './lib/room'
require 'Minitest/autorun'
require 'Minitest/pride'
require 'pry'

class RoomTest < Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_room_exists
    assert_instance_of Room, @room
  end

  def test_room_has_category
    assert_equal @room.category, :bedroom
  end

  def test_room_has_area
    assert_equal 130, @room.area
  end
end
