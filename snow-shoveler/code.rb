# Drew André - Launch Academy Ignition week #1: Snow Shoveler Challenge
# 7.15.17

puts "Snow Shovel Quote Calculator\n"
request_quote = true

#while request_quote

	puts "\nWhat is the length of your driveway in feet?\n"
	begin
		driveway_length = Integer(gets.chomp)
		rescue ArgumentError; puts "That's not a number, try again"
		retry
	end

	puts "\nWhat is the width of your driveway in feet?\n"
	begin
		driveway_width = Integer(gets.chomp)
		rescue ArgumentError; puts "That's not a number, try again"
		retry
	end

	puts "\nHow much snow fell in inches?\n"
	begin
		snow_fall_in_inches = Integer(gets.chomp)
		rescue ArgumentError; puts "That's not a number, try again"
		retry
	end

cubic_feet_measurement = driveway_width.to_f * driveway_length.to_f * (snow_fall_in_inches.to_f / 12.0) # convert inches integer to relevant value for cubic feet math
cubic_feet_measurement = cubic_feet_measurement.round

if cubic_feet_measurement < 50
	quote_price = 20
	elsif cubic_feet_measurement > 49 && cubic_feet_measurement < 150
		quote_price = 50
	elsif cubic_feet_measurement > 149 && cubic_feet_measurement < 299
		quote_price = 100
	else quote_price = 150 #300ft+
end

	puts "\nCubic Feet:\t" + cubic_feet_measurement.to_s
	puts "Quote Price:\t" + "$" + quote_price.to_s

	# begin
 #  		puts "\nWould you like to calculate another price?\n"
 #  		response = gets.chomp
 #  		response = response.upcase
 #  		if response == "N" || response == "NO"
 #  			request_quote = false
 #  		else 
 #  			rescue ArgumentError; puts "That's not a valid response. Valid options: 'yes', 'no', 'y', 'n'\n"
	# 		retry
	# 	end
	# end

puts "\nThanks for using!"
