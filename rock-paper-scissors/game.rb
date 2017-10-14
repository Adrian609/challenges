# Drew André - Launch Academy Ignition week #1: Rock Paper Scissors Challenge
# 7.15.17

puts "Rock, Paper, Scissors!"
player_score = 0
computer_score = 0
choice_array = ["Rock", "Paper", "Scissors"]
play_again = true
wait_for_play_again_response = true
wait_for_player_input = true

while play_again

	while wait_for_player_input
	puts "\nChoose rock (r), paper (p), or scissors (s): "
	player_input = gets.chomp
	player_input = player_input.upcase # player_input.upcase doesn't work?
		if player_input == "R" || player_input == "ROCK"
			player_input = "ROCK"
			player_choice_array_index = 0
			wait_for_player_input = false
			elsif player_input == "P" || player_input == "PAPER"
				player_input = "PAPER"
				player_choice_array_index = 1
				wait_for_player_input = false

			elsif player_input == "S" || player_input == "SCISSORS"
				player_input = "SCISSORS"
				player_choice_array_index = 2
				wait_for_player_input = false
			else
				puts "Not a valid input! Valid options: 'rock', 'paper', or 'scissors', 'r', 'p', or 's'. Capitalization does not matter.\n"
				wait_for_player_input = true

		end
	end

	random_number = rand(3)
	computer_choice = choice_array[random_number]
	computer_choice = computer_choice.upcase

  if player_input == "ROCK" && computer_choice == "SCISSORS"
    puts "\nPlayer chose rock. Computer chose scissors. You win!"
    player_score += 1

  elsif player_input == "SCISSORS" && computer_choice == "PAPER"
    puts "\nPlayer chose scissors. Computer chose paper. You win!"
    player_score += 1

  elsif player_input == "PAPER" && computer_choice == "ROCK"
    puts "\nPlayer chose paper. Computer chose rock. You win!"
    player_score += 1

  elsif computer_choice == "ROCK" && player_input == "SCISSORS"
    puts "\nPlayer chose scissors. Computer chose rock. Computer wins!"
    computer_score += 1

  elsif computer_choice == "SCISSORS" && player_input == "PAPER"
    puts "\nPlayer chose paper. Computer chose scissors. Computer wins!"
    computer_score += 1

  elsif computer_choice == "PAPER" && player_input == "ROCK"
    puts "\nPlayer chose rock. Computer chose paper. Computer wins!"
    computer_score += 1

  	elsif player_input == "ROCK" && computer_choice == "ROCK" ||
        	player_input == "PAPER" && computer_choice == "PAPER" ||
        	player_input == "SCISSORS" && computer_choice == "SCISSORS"
    	puts "\nTie! Player chose " + player_input + ". Computer chose " + computer_choice + "." 
  	
  end

    puts "Player score: " + player_score.to_s + "\tComputer score = " + computer_score.to_s



   while wait_for_play_again_response
  	puts "\nPlay again? y/n\n"
  	response = gets.chomp
  	response = response.upcase
  	if response == "Y" || response == "YES"
  		play_again = true
  		wait_for_play_again_response = false
  	elsif response == "N" || response == "NO"
  		play_again = false
  		wait_for_play_again_response = false
  	else
  		puts "Not a valid response\n"
  		wait_for_play_again_response = true
  	end # end play again reponse if statements
   end # end play again while loop

   wait_for_play_again_response = true
   wait_for_player_input = true

end

puts "\nThanks for playing!\n"