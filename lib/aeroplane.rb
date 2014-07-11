class Aeroplane

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def parked!
		@flying = false
	end

	
end