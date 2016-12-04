class Santa
	def speak
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end
	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie}"
	end
	def initialize (gender, ethnicity, reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"],
 age = 0)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = reindeer_ranking
		@age = age
		puts "initializing Santa instance..."
	end
end 


dan = Santa.new
dan.speak
dan.eat_milk_and_cookies("Banana Cookie")