class Card

  attr_reader :rank, :suit

  def initialize rank, suit
    @rank, @suit = rank, suit
  end


  def value
    case @rank #reference (case expression): http://bit.ly/2f4d2Lf
      when 'Ace'
        11
      when 'King'
        10
      when 'Queen'
        10
      when 'Jack'
        10
      else
        @rank
    end
  end

  def to_s
    "#{@rank} #{@suit}"
  end

end
