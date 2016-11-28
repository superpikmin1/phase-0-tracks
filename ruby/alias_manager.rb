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
	p arr
end


puts "Give me your name"
name = gets.chomp
name.downcase!
new_alias = name.split
new_alias.reverse!
new_alias.map! do |half_name|
	half_name.split('')
end

vowel_change(new_alias)

new_alias.map! do |half_name|
	half_name.join('')
end

new_alias.map! do |half_name|
	half_name.capitalize
end



p new_alias

