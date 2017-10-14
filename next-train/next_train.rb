# Drew André - Launch Academy Ignition week #2: Next Train
# 7.22.17

train_times = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

def print_lyrics_to_dont_stop_believing
	   puts "\n***DON'T STOP...BELIEVIN'!***
    Just a small town girl
    Living in a lonely world
    She took the midnight train going anywhere
    Just a city boy
    Born and raised in South Detroit
    He took the midnight train going anywhere

    A singer in a smoky room
    A smell of wine and cheap perfume
    For a smile they can share the night
    It goes on and on and on and on

    Strangers waiting, up and down the boulevard
    Their shadows searching in the night
    Streetlights people, living just to find emotion
    Hiding, somewhere in the night.
    \n"
end

continue = true
continue_prompt = true

while continue
  time = Time.new
  if time.hour > 0 && time.hour < 12
	greeting = "Good morning! "
  elsif time.hour >= 12 && time.hour < 18
	greeting = "Good afternoon! "
  elsif time.hour >= 18 && time.hour <= 24
	greeting = "Good evening! "
  else # in case of error
	greeting = "Hello! "
  end

  puts greeting + "What time are you leaving work today?"
	begin
		user_departure_time = Float(gets.chomp)
		#puts "user depart time = #{user_departure_time}"
		rescue ArgumentError; puts "That's not a valid time, try again. Must be in 24-hour format. Ex: 2:45PM = 14.75."
		retry
	end # but what is number is > 24?



  # REFERENCE for line below: https://stackoverflow.com/questions/34896576/get-closest-value-of-a-number-from-array
  nearest_train_time = train_times.find { |e| e > user_departure_time} || train_times.find { |e| e < user_departure_time}
  train_number = train_times.index(nearest_train_time) + 1
  puts "You should catch Train #{train_number} at #{nearest_train_time}."
  if train_number == 13
  	print_lyrics_to_dont_stop_believing
  end

  while continue_prompt # not a fan of doing error checking with a while loop..
  						# should be done with begin, rescue, retry, etc,
  						# but I haven't quite figured out how to combine that with
  						# if/else statements
  puts "Would you like to continue? y/n"
    will_continue = gets.chomp
    if will_continue == 'y'
  	  continue = true
  	  continue_prompt = false
    elsif will_continue == 'n'
  	  continue = false
  	  continue_prompt = false
    else
  	  puts "Not a valid entry. Please enter either 'y' to continue, or 'n' to quit."
  	  continue_prompt = true
  	end
  end
  continue_prompt = true
end

puts "Thanks for using!"