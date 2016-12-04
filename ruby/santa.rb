class Santa
	def speak
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end
	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie}"
	end
	def initialize
		puts "initializing Santa instance..."
	end
end 


dan = Santa.new
dan.speak
dan.eat_milk_and_cookies("Banana Cookie")