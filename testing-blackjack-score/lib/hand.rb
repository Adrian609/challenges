require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
    @hand_total = 0
  end

  def calculate_hand
    @cards.each do |card|
      @hand_total += card.value.to_i
    end
    @hand_total
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
hand.calculate_hand # Get this working properly
