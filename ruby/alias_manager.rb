#-get user input for name
#-split into separate words
#-swap first and last name
#-.next all consonants
#-change all vowels to the next vowel

def vowel_change (arr)
	name_counter = 0
	index_counter = 0
	vowels = "aeiou"
	while name_counter < arr.length
		while index_counter < arr[name_counter].length
			if arr[name_counter][index_counter] == "u"
				arr[name_counter][index_counter] = "a"
			elsif vowels.include? arr[name_counter][index_counter]
				arr[name_counter][index_counter] = vowels[vowels.index(arr[name_counter][index_counter]) + 1]
			end
			index_counter += 1
		end
		index_counter = 0
		name_counter += 1
	end
	arr
end

def con_change (arr)
	name_counter = 0
	index_counter = 0
	consonants = "bcdfghjklmnpqrstvwxyz"
	while name_counter < arr.length
		while index_counter < arr[name_counter].length
			if arr[name_counter][index_counter] == "z"
				arr[name_counter][index_counter] = "b"
			elsif consonants.include? arr[name_counter][index_counter]
				arr[name_counter][index_counter] = consonants[consonants.index(arr[name_counter][index_counter]) + 1]
			end
			index_counter += 1
		end
		index_counter = 0
		name_counter += 1
	end
	arr
end

array_counter = 0
name_list = []

puts "Give me your name"
name = gets.chomp
while name != "quit"
	new_name = name.downcase
	new_alias = new_name.split
	new_alias.reverse!

	new_alias.map! do |half_name|
		half_name.split('')
	end

	vowel_change(new_alias)
	con_change(new_alias)

	new_alias.map! do |half_name|
		half_name.join('')
	end

	new_alias.map! do |half_name|
		half_name.capitalize
	end

	final_alias = new_alias.join(' ')

	name_list << [name, final_alias]

	p final_alias

	array_counter += 1
	puts "Try another name? (type 'quit' to stop)"
	name = gets.chomp
end

name_list.each do |names|
	puts "#{names[0]}'s alias is #{names[1]}"
end

#John Doe
#Fui Kujp

#Zac Alec Zuu
#Baa Emid Bed