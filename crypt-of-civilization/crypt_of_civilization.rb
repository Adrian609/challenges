# Drew André - Launch Academy Ignition week #2: Crypt of Civilization
# 7.20.17

crypt_of_civilization = ["Comptometer", "Box of photographic records", "Plastic savings bank", "Set of scales", "Toast-O-Lator", "Sample of aluminum foil", "Donald Duck doll"]
extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization += extra

puts "Print: Crypt of civilization + extra: \n"
puts "---------------------"
puts crypt_of_civilization
puts "---------------------"

# crypt reference
puts "Items in array: #{crypt_of_civilization.length}"
puts "First item in array: " + crypt_of_civilization[0] # or .first
puts "Last item in array: " + crypt_of_civilization.last
puts "Second item in array: " + crypt_of_civilization[1]
puts "Third item in array: " + crypt_of_civilization[2]
puts "Second to last item in array: " + crypt_of_civilization[-2]
puts "'Toast-O-Lator' is located at index: #{crypt_of_civilization.index("Toast-O-Lator")}"

puts "---------------------"

#crypt checking
puts "Contains 'container of beer'? => #{crypt_of_civilization.include?("Container of beer")}"
puts "Contains 'Toast-O-Lator'? => #{crypt_of_civilization.include?("Toast-O-Lator")}"
puts "Contains 'Plastic bird'? => #{crypt_of_civilization.include?("Plastic bird")}"

puts "---------------------"
puts "Sorted alphabetically:\n"
puts crypt_of_civilization.sort

puts "---------------------"
puts "Sorted by word count:\n"
puts crypt_of_civilization.sort_by { |word| word.length }

puts "---------------------"
puts "Sorted by reversed alphabetical order:\n"
puts crypt_of_civilization.sort.reverse

puts "---------------------"
puts "Printing each element of the array using a while loop:"
i = 0
while i < crypt_of_civilization.length
  puts crypt_of_civilization[i]
  i += 1
end

puts "---------------------"
puts "Printing each element of the array using a for loop:"
crypt_of_civilization.each do |item|
	puts item
end

puts "---------------------"
puts "Deleting the first item in the list..."
crypt_of_civilization.delete_at(1)

puts "---------------------"
puts "Deleting the last item in the list..."
crypt_of_civilization.delete_at(-1)

puts "---------------------"
puts "Deleting 'set of scales'..."
crypt_of_civilization.delete("Set of scales")

puts "---------------------"
puts "Deleting 'Sample of aluminum foil'..."
crypt_of_civilization.delete("Sample of aluminum foil")

puts "---------------------"
puts "Printing finished list:"
crypt_of_civilization.each do |item|
	puts item
end

puts "\nDone!"
