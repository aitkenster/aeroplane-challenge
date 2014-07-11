class Aeroplane

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def land_dependent_on(weather)
		@flying = false if !weather.storm?
	end

end