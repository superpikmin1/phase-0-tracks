class Puppy

	def initialize
		puts "here comes a puppy!!"
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(qty)
		qty.times {puts "woof!"}
	end

	def roll_over
		puts "*rolls over"
	end

	def dog_years(human_years)
		human_years*7
	end

	def stay
		puts "Press 'enter' to release command"
		enter = gets.chomp
	end
end


spot = Puppy.new
spot.fetch("ball")
spot.speak(4)
spot.roll_over
puts spot.dog_years(2)
spot.stay



class Fruits

	def initialize
		puts "here comes a fruit!"
	end

	def grow(fertilizer)
		if fertilizer == true
			puts "grows really fast!"
		else 
			puts ":("
		end
	end

	def blossom
		puts "oh its so beautiful"
	end
end

all_fruits = []
50.times do |i|
	all_fruits[i] = Fruits.new
end

puts all_fruits

all_fruits.each do |instance|
	instance.grow(true)
	instance.blossom
end
