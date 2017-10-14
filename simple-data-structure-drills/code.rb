# Drew André - Launch Academy Ignition week #3: System Check: Simple Data Structure Drills
# 7.31.17

transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
first_transaction = transactions[0]
puts "First transaction = #{first_transaction}"
# * What is the value of the second transaction?
second_transaction = transactions[1]
puts "Second transaction = #{second_transaction}"
# * What is the value of the fourth transaction?
third_transaction = transactions[3]
puts "Third transaction = $#{third_transaction}"
# * What is the value of the last transaction?
last_transaction = transactions[-1] # or transactions.last
puts "Last transaction = $#{last_transaction}"
# * What is the value of the second from last transaction?
second_to_last_transaction = transactions[-2]
puts "Second-to-last transaction = $#{second_to_last_transaction}"
# * What is the value of the 5th from last transaction?
fifth_to_last_transaction = transactions[-5]
puts "Fifth-to-last transaction = $#{fifth_to_last_transaction}"
# * What is the value of the transaction with index 5?
fifth_index_transaction = transactions[5]
puts "Fifth-index transaction = $#{fifth_index_transaction}"
# * How many transactions are there in total?
number_of_transactions = transactions.length
puts "Number of transactions = #{number_of_transactions}"
# * How many positive transactions are there in total?
number_of_positive_transactions = 0
number_of_negative_transactions = 0
total_sum = 0
transactions.each do |transaction|
	total_sum += transaction # or array.sum
	if transaction > -1
		number_of_positive_transactions += 1
	else
		number_of_negative_transactions += 1
	end
end
puts "Number of deposits = #{number_of_positive_transactions}"
# * How many negative transactions are there in total?
puts "Number of withdrawals = #{number_of_negative_transactions}"
# * What is the largest withdrawal?
puts "Max withdrawal = $#{transactions.min}"
# * What is the largest deposit?
puts "Max withdrawal = $#{transactions.max}"
# * What is the small withdrawal?
smallest_withdrawal = 0
smallest_deposit = 0
index = 0
transactions.sort.each do |transaction|
	puts transaction
	if transaction >= 0
		smallest_deposit = transaction
		smallest_withdrawal = transactions[index - 1]
		break
	end
	index += 1
end
puts "Smallest withdrawal = $#{smallest_withdrawal}"
# * What is the smallest deposit?
puts "Smallest deposit = $#{smallest_deposit}"
# * What is the total value of all the transactions?
puts "Total value of all transactions = $#{total_sum}"
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
puts "Current balance = $#{239900 - transactions.max}"

puts "--------------------------------------"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
best_records_length = best_records.size
puts "Best records length = #{best_records_length}"
# * Who are all the artists listed?
best_records.each do |artist, record|
	puts artist
end
puts "--------------------------------------"
# * What are all the album names in the hash?
best_records.each do |artist, record|
	puts record
end
# * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
# * Add your favorite musician and their best album to the list.
best_records[:"D'Angelo"] = "Voodoo"
# * Change `Nirvana`'s album to another.
best_records.delete("Nirvana")				# had trouble figuring out how to REPLACE
best_records[:"Wolfmother"] = "Wolfmother"	# doesn't this just add to the end of the list?
# * Is `Nirvana` included in `best_records`?
puts "Nirvana = #{best_records.has_key?("Nirvana")}"
# * Is `Soundgarden` included in `best_records`?
puts "Soundgarden = #{best_records.has_key?("Soundgarden")}"
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records[:"Soundgarden"] = "Superunknown"
puts "--------------------------------------"
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
artist_names_greater_than_six_char = Array.new
artist_names_less_than_six_char = Array.new
best_records.each do |artist, record|
	if artist.length <= 6
			artist_names_less_than_six_char << artist
	else
		artist_names_greater_than_six_char << artist
	end
end
puts "Artists with names less than 6 characters = #{artist_names_less_than_six_char}"
# * Which key-value pairs have a value that is greater than 10 characters?
puts "Artists with names less than 6 characters = #{artist_names_greater_than_six_char}"

