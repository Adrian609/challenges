class BoundingArea

  def initialize(boxes) # add a star before?
    @boxes = boxes
  end

  def boxes_contain_point?(x,y)
    @boxes.any?{ |box| box.contains_point?(x,y)}
  end
end
