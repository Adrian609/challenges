require_relative "card"

class Deck

  attr_reader :cards

  SUITS = %w[♥ ♠ ♦ ♣] # reference (%w): http://bit.ly/2f3G9hQ
  RANKS = [*2..10, 'Jack', 'Queen', 'King', 'Ace'] # reference (.product): http://bit.ly/2f4jEcL

  def initialize
    @cards = []
    SUITS.product(RANKS) { |suit, rank| @cards << Card.new(rank, suit) } # add each card to the deck
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.shift
  end

end
