require './lib/room'
require 'pry'

class House
  attr_reader :price,
              :address,
              :rooms,
              :area

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all {|room| room.category == category}
  end

  def area
    areas = @rooms.map {|room| room.area}
    areas.sum
  end
end
