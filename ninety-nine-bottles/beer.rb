# Drew André - Launch Academy Ignition week #2: Ninety Nine Bottles
# 7.23.17

99.downto(2) { |x|
	if (x%10 != 0)
	  puts "#{x} bottles of beer on the wall, #{x} bottles of beer.\n"\
	else
	  puts "#{x} bottles of beer on the wall, #{x} bottles of beer!\n"\
    end

    if (x != 2)
      puts "Take one down and pass it around, #{x - 1} bottles of beer on the wall.\n\n"
	else
	  puts "Take one down and pass it around, #{x - 1} bottle of beer on the wall.\n\n"
	end

}

# when interation == 1
puts "1 bottle of beer on the wall, 1 bottle of beer.\n"\
"Take one down and pass it around, no more bottles of beer on the wall.\n\n"

puts "No more bottles of beer on the wall, no more bottles of beer.\n"\
"Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"