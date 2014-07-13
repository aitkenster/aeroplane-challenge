module Weather
	attr_reader :storm

	def initialize
		@storm ||= DEFAULT_STORMY
	end

	def storm?
		@storm
	end

	def weather_rand
			rand(10)
	end

	def weather_odds
		@storm = true if(weather_rand > 6)
	end


	DEFAULT_STORMY = false


end