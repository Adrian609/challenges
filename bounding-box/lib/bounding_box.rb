class BoundingBox

  attr_reader :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left # returns the left edge of the box
    @x
  end

  def right # returns the right edge of the box
    @x + @width
  end

  def top # returns the top edge of the box
    @y + height
  end

  def bottom #returns the bottom edge of the box
    @y
  end

  def contains_point?(x,y)
    x >= left   &&
    x <= right  &&
    y >= bottom &&
    y <= top
  end

end
