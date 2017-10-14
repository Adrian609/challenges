class Cat
  attr_reader :name, :lives
  def initialize(name, lives = 9)
    @lives = lives
    @name = name
  end

end
