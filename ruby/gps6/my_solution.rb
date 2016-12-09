# Virus Predictor

# I worked on this challenge with Aaron Calander.
# We spent [countless] hours on this challenge.

# Release 0
# The program predicts the effect of a virus on each state
# in terms of a) how many people will die per state and
# b) the speed the virus will spread in each state.
# Takes information from state_data.rb and feeds into VirusPredictor class

# Release 1
# EXPLANATION of require_relative
# - Allows you to reference another file within the same
#   working directory (thus having a relative path)
# - 'require' looks for a library of information (such
#   as a gem)

# Release 2
# - STATE_DATA is a hash within a hash ("hashy hash")
# - each hash has information based on that state
# - STATE_DATA is a constant that is global as it is
#   defined outside of the class declaration

# Release 3 (see each method)
require_relative 'state_data'

class VirusPredictor

# initializing the Class with three parameters: 
# state_of_origin, population_density, and population
# assigning instance variables for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# this method calls the other two methods and passes
# in the required arguments and prints results

# Release 5
  def virus_effects
    # these are already defined as instance variables in initialize method
    predicted_deaths # (@population_density, @population, @state)
    # these are already defined as instance variables in initialize method
    speed_of_spread # (@population_density, @state)
  end

# Release 6
  private
# private methods cannot be called outside of the class where
# it was defined (and thus can't be manipulated by the User). This can 
# be useful if you have fixed data. If you move
# 'private' above the virus_effects method, then you
# can't access the crucial data from state_data.rb

# this method takes two parameters (pop. density, pop.) and
# creates a conditional statement that is based on population
# density
# defines variable number_of_deaths as a mathematical
# expression of population multiplied by a decimal (derived
# from population_density) and rounded down to nearest
# integer -- as population density is lower, the 
# number of people that die will decrease

# Release 7

# ORIGINAL METHOD:
  # these parameters are already defined as instance variables in initialize method
  # def predicted_deaths # (population_density, population, state)
    # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  # end

 # REFACTORED METHOD:

 def predicted_deaths
  population_hash = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
  
  population_hash.each do |key, value|
    if @population_density == key
      @number_of_deaths = (@population * value).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
  end
  print "#{@state} will lose #{@number_of_deaths} people in the outbreak"
end
# - this method takes two parameters (population_density and state)
# - creates a conditional statement based on population density
# - assigns a speed variable that starts at 0.0 and
# - increases as the population density decreases

# ORIGINAL METHOD:
  # these parameters are already defined as instance variables in initialize method
  # def speed_of_spread # (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# REFACTORED METHOD:

def speed_of_spread
  speed = 0.0
  population_hash = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2}

  population_hash.each do |key, value|
  	speed = 0.0
    if @population_density >= key
      speed += value
      break
    else
      speed += 2.5
    end
  end
  puts "and will spread across the state in #{speed} months.\n\n"
end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# Release 4
STATE_DATA.each do |state, population_info|
  state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# 1) The difference syntax of how the hashes are being assigned is that the outer hash uses a string 
# as a key ("Alabama") and assigns the value with '=>'. But inside this value the keys populuation_density
# and population are symbols with assigned integers as values. The way difference in assigning key to value
# makes it very easy for the reader of the code to recognize key-value pairs and their purposes
# inside the hash

# 2) 
# - Allows you to reference another file within the same
#   working directory (thus having a relative path)
# - 'require' looks for a library of information (such
#   as a gem)

# 3) .each is a very easy way to iterate through a hash.
# One could also use any other type of loop (while, for, until. etc)
# and use a counter or multiple counters to run the code multiple times and access key-value pairs

# 4) It didn't occur to me initially that it wasn't necessary to use parameters for the methods inside
# virus effect. Of course the variables that were being used as parameters already have set values
# based on each specific object of the class, so asking for them again as parameters is redundant.

# 5) The use of instance variables and iterating through hashes were two concepts that were
# solidified for me this gps. Being able to use instance variables effectively was made clear.
# I'm not confident in being able to iteratate through a 'hasy hash' and being 
# able to access inner key-value pairs from the bigger hash