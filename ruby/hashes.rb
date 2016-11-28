#-Create a hash 'client'
#	-create key for:
#		-name
#		-age
#		-number of children
#		-decor theme
#		-married
#		-income
#		-favorite animal
#	-get user input to create values for the keys
#	-change data types
#	-allow user to go back
#	-print hash


client = {}
puts "What is your name?"
client [:name] = gets.chomp
puts "What is your age?"
client [:age] = gets.chomp
puts "How many children do you have?"
client [:children] = gets.chomp
puts "What decor theme would you like?"
client [:decor] = gets.chomp
puts "Are you currently married? (y/n)"
client [:married] = gets.chomp
puts "How much do you make a year? (No $ needed)"
client [:income] = gets.chomp
puts "What is your favorite animal?"
client [:animal] = gets.chomp

client [:age] = client [:age].to_i
client [:income] = client [:income].to_i
client [:children] = client [:children].to_i
if client [:married] == "y"
	client [:married] = true
else
	client [:married] = false
end

puts "Would you like to change anything?"
input = gets.chomp

if input == "name"
	puts "What is your name?"
	client [:name] = gets.chomp
elsif input == "age"
	puts "What is your age?"
	client [:age] = gets.chomp
	client [:age] = client [:age].to_i
elsif input == "children"
	puts "How many children do you have?"
	client [:children] = gets.chomp
	client [:children] = client [:children].to_i
elsif input == "decor"
	puts "What decor theme would you like?"
	client [:decor] = gets.chomp
elsif input == "married"
	puts "Are you currently married? (y/n)"
	client [:married] = gets.chomp
	if client [:married] == "y"
		client [:married] = true
	else
		client [:married] = false
	end
elsif input == "income"
	puts "How much do you make a year? (No $ needed)"
	client [:income] = gets.chomp
	client [:income] = client [:income].to_i
elsif input == "animal"
	puts "What is your favorite animal?"
	client [:animal] = gets.chomp
elsif input == "none"
	puts "Thank You!"
end




p client


