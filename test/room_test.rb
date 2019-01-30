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
# pry(main)> require './lib/room'
# #=> true
#
# pry(main)> room = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fa53b9ca0a8 @category=:bedroom, @length=10, @width=13>
#
# pry(main)> room.category
# #=> :bedroom
#
# pry(main)> room.area
# #=> 130
# ```
#
# ## Iteration 2
#
# Use TDD to create a `House` class that responds to the following interaction pattern:
#
# ```ruby
# pry(main)> require './lib/room'
# #=> true
#
# pry(main)> require './lib/house'
# #=> true
#
# pry(main)> house = House.new("$400000", "123 sugar lane")
# #=> #<House:0x00007fccd30375f8...>
#
# pry(main)> house.price
# #=> 400000
#
# pry(main)> house.address
# #=> "123 sugar lane"
#
# pry(main)> house.rooms
# #=> []
#
# pry(main)> room_1 = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fccd29b5720...>
#
# pry(main)> room_2 = Room.new(:bedroom, 11, 15)
# #=> #<Room:0x00007fccd2985f48...>
#
# pry(main)> house.add_room(room_1)
#
# pry(main)> house.add_room(room_2)
#
# pry(main)> house.rooms
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
