class Rectangle
  attr_reader :length, :width
  attr_accessor :x, :y
  def initialize(length, width, x = 0, y = 0)
    @length = length
    @width = width
    @area = nil
    @x = x
    @y = y
  end

  def area
    @area = @length * @width
    return @area
  end

  def diagonal
    Math::sqrt((@length**2) + (@width**2))
  end
end
