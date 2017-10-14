# Drew André - Launch Academy Ignition week #3: Iteration Drills
# 7.27.17
# In this challenge, we will drill iteration concepts using .each for arrays, hashes and compound data structures.

puts "PART ONE: .each to english"
puts "1) For each element 'number' in the array called 'numbers', print the element 'number' miltiplied by 3.\n"
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each do |number|
  puts 3 * number
end
puts "---------------"

puts "2) For each element 'name' in the array called 'names', print the character length of the element 'name'.\n"
names_array = ['Joe', 'Tim', 'Max', 'Benny']
names_array.each do |name|
  puts name.length
end
puts "---------------"

puts "3) Initialize a variable to hold the sum, called 'sum', to zero.
Then, for each element 'number' in the array called 'numbers',
add the value of element 'number' to the running sum variable, called 'sum'.
When finished, print the numbers list's sum.sum = 0"
sum = 0
numbers.each do |number|
  sum += number
end
puts sum
puts "---------------"

puts "4) For each key 'name', print the key, followed by the string 'is', followed by
the value ('age'), followed by the string 'years old'."
names_hash = {
	Joe: 22,
	Tim: 23,
	Max: 24,
	Benny: 25,
	Drew: 26
}
names_hash.each do |name, age|
  puts "#{name} is #{age} years old."
end
puts "---------------"

puts "Initialize a variable to hold the sum, called 'sum', to zero.
For each key ('transaction') in the hash called 'account',
add the key's associated value ('value') to the variable 'sum'.
When finished, print 'The value of the account is' followed by
the string interpolated value of 'sum'."
account = {
	Banana: 0.75,
	Apple: 1.00,
	Cereal: 4.50,
	Ice_Cream: 5.00,
	Bread: 2.25
}
sum = 0
account.each do |transaction, value|
  sum += value
end
puts "The value the account is #{sum}"
puts "---------------"

puts "PART TWO: english to .each"

puts "1) For every element 'word' in the array 'sentences' print out the word."
sentences = ["This function prints out each word in the sentence."]
sentences.each do |word|
	puts word
end
puts "---------------"

puts "2) For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code."
numbers = ['5062952000', '9784952066', '4934783076']
numbers.each do |phone_number|
	if phone_number[0,3] == '978'
		puts phone_number
	else
		puts "Not a MA area code number"
	end
end
puts "---------------"

puts "3) For every element number in the array 'numbers' print out every odd number."
numbers = [4,7,3,8,9,4,1,5,2,2]
numbers.each do |number|
	if number.odd? # or if (number %2) = 1
		puts number
	end
end
puts "---------------"

puts "4) For every name-age pair in the hash 'ages', print out each pair."
ages = {
	Joe: 22,
	Tim: 23,
	Max: 24,
	Benny: 25,
	Drew: 26
}
ages.each do |name, age|
	if age == 1
		puts "#{name.to_s} is #{age} year old."
	else
		puts "#{name.to_s} is #{age} years old."
	end
end
puts "---------------"

puts "5) For every name-age pair in the hash 'ages', print out a pair if the age is > 10."
ages.each do |name, age|
	if age > 10
		puts "#{name.to_s} is #{age} years old."
	end
end
puts "---------------"

puts "6) For every name-age pair in the hash 'ages', print out a pair if the age is even."
ages.each do |name, age|
	if age.to_i.even? # if (age.to_i %2) == 0
		if age.to_i == 1
			puts "#{name.to_s} is #{age} year old."
		else 
			puts "#{name.to_s} is #{age} years old."
		end
	end
end
puts "---------------"


puts "PART THREE: working with arrays"
puts "1) How would you print out each name backwards in array?"
names_array.each do |name|
  puts name.reverse
end
puts "---------------"

puts "2) What are the total number of characters in the names in array?"
sum = 0
names_array.each do |name|
  sum += name.length
end
puts sum
puts "---------------"

puts "3) How many names in array are less than 5 characters long?"
sum = 0
names_array.each do |name|
	if name.length < 5
		sum += 1
	end
end
puts sum
puts "---------------"

puts "4) How many names in array end in a vowel?"
sum = 0
names_array.each do |name|
	if name[-1] =~ /[aeiou]/ # REFERENCE: https://stackoverflow.com/questions/24835078/searching-for-vowels-in-ruby
		sum += 1
	end
end
puts sum
puts "---------------"

puts "5) How many names in array are more than 5 characters long?"
sum = 0
names_array.each do |name|
	if name.length > 5
		sum += 1
	end
end
puts sum
puts "---------------"

puts "6) How many names in array are exactly 5 characters in length?"
sum = 0
names_array.each do |name|
	if name.length == 5
		sum += 1
	end
end
puts sum
puts "---------------"

