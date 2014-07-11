class Weather

	def initialize
		@storm = false
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

end