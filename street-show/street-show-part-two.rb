# Drew André - Launch Academy Ignition week #1: Street Show Challenge PART 1
# 7.18.17

puts "Hello everybody! Today, my accomplice and I will be showing you acts of great daring. Can I have an audience volunteer?"
puts "There's our brave volunteer! What's your name?"
audience_volunteer_name = gets.chomp
puts "Everyone give a big round of applause for #{audience_volunteer_name}!"
puts "Now #{audience_volunteer_name}, what's your favorite number?"
audience_volunteer_favorite_number = gets.chomp
puts "Alright #{audience_volunteer_name}, my friend and I will be juggling these knives around you for #{audience_volunteer_favorite_number} seconds. Are you prepared to be amazed?"

amazed_yes_or_no = gets.chomp

if amazed_yes_or_no == "yes"
	puts "Cool man"
elsif amazed_yes_or_no == "no"
	puts "Leave ."
end

