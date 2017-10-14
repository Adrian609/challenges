require 'pry'
class Hand

  attr_reader :value, :current_hand

  def initialize
    @current_hand = []
    @value = 0
  end

  def deal(card)
    current_card_value = card.value
    #puts "current_card_value = #{card.value}"
    if((current_card_value == 11) && ((@value + current_card_value) > 21))
      current_card_value = 1
    end
    @value += current_card_value
    @current_hand << card
  end

end
