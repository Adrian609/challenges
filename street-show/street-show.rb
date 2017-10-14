# Drew André - Launch Academy Ignition week #1: Street Show Challenge PART 1
# 7.18.17

# This assignment was submitted pretty late. For a while I was working on a slightly more complex solution
# but I ended up just missing the deadline. Oops. Won't happen again.
# I'll leave where I left off below this assignment. I was exploring the use of:
# => the split() function so that a user could enter the trick ID number (0,1,2, or 3) follow directly by the tip amount\
# => while loops from week 2 curriculum so the user could continuously enter tips
# => begin, rescue, and retry for user input validation
# => array summing, mapping, and shifting.

# Ideally the user could enter the trick number, followed by the tip amount in a variety of formats (i.e. '1, 2.10' or '0 $3.10')
# and ruby would shift out the trick number, validate the rest of the array, sum it up, and total/average it after the user entered 'done'
# The user could also enter 'help' and print the instructions again.

# Anyway, I got stuck on converting the rest of the array to integers AND summing it. Also got stuck on the use of retry. Learned a lot though!


total_knife_juggling_tips = sprintf( "%0.02f", 2.10 + 0.77 + 5.00 + 1.00 + 3.00)
total_torch_juggling_tips = sprintf( "%0.02f", 6.00 + 3.50 + 7.00)
total_hand_balancing_tips = sprintf( "%0.02f", 2.00 + 1.00)
total_human_blockhead_tips = sprintf( "%0.02f", 0.75 + 0.43)

total_tips = total_knife_juggling_tips.to_f + total_torch_juggling_tips.to_f + total_hand_balancing_tips.to_f + total_human_blockhead_tips.to_f

average_tips = sprintf( "%0.02f", total_tips * 0.25)

puts "Total Knife Juggling Tips:\n#{"$" + total_knife_juggling_tips}"
puts "Total Torch Juggling Tips:\n#{"$" + total_torch_juggling_tips}"
puts "Total Hand Balancing Tips:\n#{"$" + total_hand_balancing_tips}"
puts "Total Human Blockhead Tips:\n#{"$" + total_human_blockhead_tips}\n"

puts "Total:\n$" + total_tips.to_s

puts "Average:\n$" + average_tips.to_s



=begin

continue = true
trick_number = 0

puts "\nStreet Show Tip Calculator!"

def print_instructions
	puts "\n---------------------------------------------------"
	puts "INSTRUCTIONS:\nEnter the trick number you wish to enter a tip value for,\nfollowed by a comma, space, or newline, and the tip value."
	puts "\n'0' = Knife Juggling\t\t '1' = Torch Juggling\n'2' = Hand Balancing\t\t'3' = Human Blockhead"
	puts "\nEXAMPLE: 1, 2.10"
	puts "\nType 'done' when finished, or 'help' to see the instrucitons again"
	puts "---------------------------------------------------\n\n"
end

print_instructions

while (continue) do

	#begin
	user_input_array = gets.chomp.split( #reference: https://stackoverflow.com/questions/8961930/split-on-newlines-and-commas-and-semi-colons
    	/\s*[,;]\s* # comma or semicolon, optionally surrounded by whitespace
    	|           # or
   		\s{1,}      # one or more whitespace characters
    	|           # or
    	[\r\n]+     # any number of newline characters
    	/x)

		trick_number = user_input_array.shift #reference https://ruby-doc.org/core-2.2.0/Array.html#method-i-shift
		# puts "trick number = " + trick_number.to_s
		# puts trick_number.class

		user_input_array.map {|x| Integer(x) rescue nil }.compact # convert the rest of the array into integers...
		a = user_input_array.inject{|sum, n| sum + n } 
		puts a

		#puts "trick number = " + trick_number.to_s

		# rescue 
		# 	if trick_number != ['0', '1', '2', '3', 'done', 'help']; puts 'The first entry is not a valid option, try again.'
		# 		retry
		# 	end

	#end

		# if trick_number == "0"
		# 		total_knife_juggling_tips = user_input_array.each_char.map(&:to_i)
		# 		total_knife_juggling_tips = user_input_array.inject(0, :+)
		# 		puts "Total knife juggling tips = " + total_knife_juggling_tips.to_s
		# 	elsif trick_number == "1"
		# 		total_torch_juggling_tips = user_input_array.inject(0, :+)	
		# 		puts "Total knife juggling tips = " + total_knife_juggling_tips.to_s
		# 	elsif trick_number == "2"
		# 		total_hand_balancing_tips = user_input_array.inject(0, :+)
		# 		puts "Total hand balancing tips = " + total_hand_balancing_tips.to_s
		# 	elsif trick_number == "3"
		# 		total_human_blockhead_tips = user_input_array.inject(0, :+)	
		# 		puts "Total human blockhead tips = " + total_human_blockhead_tips.to_s
		# 	elsif trick_number.upcase == "DONE"
		# 		continue = false
		# 	elsif trick_number.upcase == "HELP"
		# 		print_instructions
		# 	else
		# 		puts "not a valid entry" # here is another place I would use a retry?
		# end

end #end main while loop

puts "Thanks for using!"
=end