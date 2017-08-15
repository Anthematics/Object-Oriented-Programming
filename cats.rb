# Create a class called Cat
# Every cat should have three attributes when they're created: name, preferred_food and meal_time
# Since we want these fields to be set for every Cat, you'll need to add an initialize method to your class
# You can use irb to test out your class by loading your class into the console using the load method (i.e. load 'cat.rb')
# and then creating new instances of your class.
# Create two instances of the Cat class in your file
# They should each have unique names, preferred foods and meal times
# Let's assume meal_time is an integer from 0 to 23
# Add an instance method called eats_at that returns the hour of the day with AM or PM that this cat eats.
# The return value should be something like "11 AM" or "3 PM"
# Add another instance method called meow that returns a string of the cat telling you all about itself
# The return value should be something like "My name is Sparkles and I eat tuna at 11 AM"
# Call the meow method on each of the cats you instantiated in Step 3
# Use puts to have the program output the result to the terminal
# Once you're done, commit again!

class Cat
		def initialize(name, preferred_food, meal_time)
		@name
		@perferred_food
		@meal_time
		end

		def name
			@name
		end

		def perferred_food
			@perferred_food
		end

		def timeconverson
			thetime=0
			if @meal_time >= 12
				thetime = @meal_time - 12
			return "#{time} a.m"

				else
					thetime = @meal_time
				return "#{time} p.m"
				end #ELSEWITHOUTRESCUEISUSELESSWHATDOYOUEVENMEAN
			end

	 def meow
			 "I'm #{name} I eat #{perferred_food} & I tend to eat around #{timeconverson} "
	 end
end

catmerlin = Cat.new("Merlin","birds",'17' )

catmisty = Cat.new("Misty", "not birds",'15' )

puts catmerlin.meow
