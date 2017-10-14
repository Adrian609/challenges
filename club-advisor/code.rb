# Drew André - Launch Academy Ignition week #2: Ninety Nine Bottles
# 7.23.17

club_choices = {
  driver: 200,
  four_wood: 180,
  five_wood: 170,
  two_iron: 170,
  three_iron: 160,
  four_iron: 150,
  five_iron: 140,
  six_iron: 130,
  seven_iron: 120,
  eight_iron: 110,
  nine_iron: 95,
  pitching_wedge: 80,
  sand_wedge: 20,
  putter: 0
}

puts "How far away are you?"
begin
	distance_from_hole = Integer(gets.chomp)
	rescue ArgumentError; puts "That's not a valid number, try again."
	retry
end

club_choices.each do |club, minimum_distance|
	if distance_from_hole > minimum_distance
		puts "Use the #{club.to_s.gsub("_", " ")}!"
		break
	end
end