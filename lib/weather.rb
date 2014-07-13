module Weather
	attr_reader :storm

	def initialize
		@storm ||= DEFAULT_STORMY
	end

	def storm?
		weather_odds
		@storm
	end

	def weather_rand
		@weather_rand
	end

	def weather_odds
		@weather_rand = rand(10)
		if(@weather_rand > 6)
			@storm = true
		else
			@storm = false
		end
	end


	DEFAULT_STORMY = false


end