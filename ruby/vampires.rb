puts "How many employees will be processed?"
employees = gets.chomp
employees = employees.to_i
counter = 0
until counter == employees
puts "What is your name?"
fullName = gets.chomp

puts "How old are you?" 
age = gets.chomp

puts "What year were you born?"
birthYear = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance? y/n"
insurance = gets.chomp

result = "Result inconclusive"
if age.to_i == (2016 - birthYear.to_i) && garlic == "y" || insurance == "y"
	result = "Probably not a vampire"
end
if age.to_i != (2016 - birthYear.to_i) && garlic == "n" || insurance == "n"
	result = "Probably a vampire"
end
if age.to_i != (2016 - birthYear.to_i) && garlic == "n" && insurance == "n"
result = "Almost certainly a vampire"
end
if fullName == "Drake Cula" || fullName == "Tu Fang"
	result = "Definitely a vampire"
end
puts "Do you have any allergies? If not or once listed type 'done'"
allergy = nil
until allergy == "done"
	allergy = gets.chomp
	if allergy == "sunshine"
		result = "Probably a vampire"
		break
	end
end
puts result
counter+=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

