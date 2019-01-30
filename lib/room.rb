require 'pry'

class Room
  attr_reader :category,
              :length,
              :width,
              :area

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @area = @width * @length
  end
end
