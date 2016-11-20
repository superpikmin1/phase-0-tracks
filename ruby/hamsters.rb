puts "Enter Hamster Name:"
hamsterName = gets.chomp

puts "Enter Volume level 1-10"
hamsterVolume = gets.chomp
hamsterVolume = hamsterVolume.to_f
if hamsterVolume < 1
	hamsterVolume = 1.0
elsif hamsterVolume > 10
	hamsterVolume = 10.0
end

puts "Enter Fur Color"
furColor = gets.chomp

puts "Is The Hamster A Pretty Cool Guy?"
coolHamster = gets.chomp

puts "How Old Is The Hamster?"
hamsterAge = gets.chomp
if hamsterAge == ""
	hamsterAge = nil
end
hamsterAge = hamsterAge.to_i

puts "Your Hamster's Name is: #{hamsterName}"
puts "#{hamsterName}'s noise level is: #{hamsterVolume}."
puts "#{hamsterName} is a #{furColor} hamster."
puts "Is #{hamsterName} a cool hamster? #{coolHamster}."
puts "#{hamsterName} is #{hamsterAge} years old."