class Grocery

  attr_reader :name, :quantity

  def initialize(name, quantity = 1)
    @name = name
    @quantity = quantity
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end

end
