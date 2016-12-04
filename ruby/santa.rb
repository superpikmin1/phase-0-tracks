class Santa
	attr_reader  :ethnicity, :age
	attr_accessor :gender, :reindeer_ranking
	def speak
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end
	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie} or #{@reindeer_ranking[0]} isn't my favorite reindeer"
	end
	def initialize (gender, ethnicity, age = 0, reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"])
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = reindeer_ranking
		@age = age
		puts "initializing Santa instance..."
	end
	def get_mad_at(reindeer)
		reindeer_ranking.delete_at(reindeer_ranking.index(reindeer))
		reindeer_ranking[-1] = reindeer
	end
	def celebrate_birthday
		@age += 1
	end

end 


#dan = Santa.new("male", "black")
#jon = Santa.new("male", "mexican")
#jess = Santa.new("female", "Chinese")
#dan.speak
#dan.eat_milk_and_cookies("Banana Cookie")
#jon.speak
#jess.eat_milk_and_cookies("Choco chip")
#p jess.age
#jess.celebrate_birthday
#p jess.age
#jon.get_mad_at("Rudolph")
#p jon.reindeer_ranking
#jon.gender = "female"
#p jon.gender
#p dan.ethnicity
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
counter = 0
while counter < 100
	puts "Santa #{counter + 1}"
	random_gender = example_genders.sample
	random_ethnicity = example_ethnicities.sample
	random_age = rand(0-140)
	random_santa = Santa.new(random_gender, random_ethnicity, random_age)
	puts random_santa.gender
	puts random_santa.age
	puts random_santa.ethnicity
	counter += 1
end
