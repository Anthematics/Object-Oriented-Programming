require 'pry'
	class Player
@@playerlist = []

		def initialize(name)
			@name = name
			@gold_coins= 0
			@health_points =10
			@lives =5
			@level=1
		end

		def name
			@name
		end

		def lives
			@lives
		end

		def self.newplayer(name)
			newplayer = Player.new(name)
			@@playerlist << newplayer
			newplayer
		end

		def level_up
			@lives +1
			@level=@level+1
		end

		def collect_treasure
			@gold_coins +=1
			if @gold_coins % 10 == 0
				level_up

			end
		end

		def do_battle
			@health_points = @health_points -3

			if @health_points <= 2
				@lives=@lives-1
				@health_points = 10

			elsif @lives==0
				restart

			end
		end

		def healing
		@health_points +3
		end

		def death(lives)
			if lives <=1
				restart
			end
		end

		def restart
		@gold_coins=0
		@health_points=10
		@lives=5
		end
	end

jason=Player.new("jason")
matthew=Player.new("matthew")
puts jason.inspect
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure
	jason.collect_treasure

puts jason.inspect
