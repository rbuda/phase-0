# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# 
#
require_relative 'state_data'

class VirusPredictor

#   sets instance of the new class's variables equal to instance variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

#   when called runs the predicted_deaths & speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed = speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{speed} months."
    puts
  end

  private

#   if stmts for pop_density to determine # of deaths based on population
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x =  0.3
    elsif @population_density >= 100
      x =  0.2
    elsif @population_density >= 50
      x =  0.1
    else
      x = 0.05
    end
    
    @number_of_deaths = (@population * x).floor   
    
  end

#   changes speed variable based on population density
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state)
  
  state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file? 
# The STATE_DATA hash has states stored in it with the => to their hash.  Within these hashes are symbols as keys tied to values.

# What does require_relative do? How is it different from require?
# Links the state_data.rb file to the solution file.  Relative is because it's in the same directory as the my_solution.rb file.

# What are some ways to iterate through a hash?
# with the .each do methods.  Can call out keys or values within the hash with []'s and a :symbol or ["hash name"]

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Was repetitive.  Also it is up to the user what they feel is more concise versus readable.

# What concept did you most solidify in this challenge?
# Creating new instances of classes.

