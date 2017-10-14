class Container
  #attr_reader :weight
  def initialize(weight, max_weight)
    @weight = weight
    @max_weight = max_weight
    @ingredients = []
  end

  def weight
    @weight.round
  end

  def maximum_holding_weight
    @max_weight
  end

  def ingredients
    @ingredients
  end

  def fill_with_ingredient(ingredient)
    number_of_ingredients = ( @max_weight / ingredient.weight ).to_i
    number_of_ingredients.times {
      @ingredients << ingredient
      @weight += ingredient.weight
    }
    #which_ingredient
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.size
  end

  def remove_one_ingredient

  end

  def empty
    @ingredients.clear
  end

end
