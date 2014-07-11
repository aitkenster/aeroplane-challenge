class Aeroplane

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def land_dependent_on(weather)
		land! if !weather.storm?
	end

	def land!
		@flying = false
		self
	end

	def take_off!
		@flying = true
		self
	end

	def take_off_dependent_on(weather)
		take_off! if !weather.storm?
	end

end