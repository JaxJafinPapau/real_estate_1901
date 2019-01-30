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

  def price_per_square_foot
    unit_price = @price.to_f / area.to_f
    unit_price.round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort {|room| room.area}
  end

  def rooms_by_category
    @rooms.sort {|room| room.category}
  end
end
