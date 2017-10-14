require_relative "card"
require_relative "deck"
require_relative "hand"

player_move = nil

player = Hand.new
computer = Hand.new
deck = Deck.new
deck.shuffle

player.deal(deck.draw)
puts "Player was dealt: #{player.current_hand.last}"
player.deal(deck.draw)
puts "Player was dealt: #{player.current_hand.last}"
puts "Player score: #{player.value}"

puts "\nHit or stand (H/S):"
player_move = gets.chomp

while player_move != "s"
  player.deal(deck.draw)
  puts "\nPlayer was dealt: #{player.current_hand.last}"
  puts "\nPlayers score: #{player.value}"
  if(player.value > 21)
    puts "\nBust! You lose..."
    break
  end
  puts "Hit or stand (H/S):"
  player_move = gets.chomp
end

if(player_move == 's')

  computer.deal(deck.draw)
  puts "\nComputer was dealt: #{computer.current_hand.last}"
  computer.deal(deck.draw)
  puts "Computer was dealt: #{computer.current_hand.last}"

  puts "Computer score: #{computer.value}"

  while computer.value < 17

    computer.deal(deck.draw)
    puts "\nComputer was dealt: #{computer.current_hand.last}"
    puts "\nComputer score: #{computer.value}"

    if computer.value > 21
      computer_bust = true
      break
    end
  end

  if(player.value < computer.value) && (!computer_bust)
    puts "\nComputer wins!"
  elsif player.value && computer.value == 21
    puts "\nTie!"
  else
    puts "\nComputer busts! You win!"
  end
end
