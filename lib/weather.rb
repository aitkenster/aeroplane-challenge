class Weather

	def initialize
		@storm = false
	end

	def storm?
		@storm
	end

	def weather_odds
		@storm = true if(rand(10) < 6)
	end

end