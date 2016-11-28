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

p client


