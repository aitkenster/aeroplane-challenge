class Aeroplane

	def initialize
		@flying = true
	end

	def flying!
		@flying = true
		self
	end

	def flying?
		@flying
	end

	def parked!
		@flying = false
		self
	end


end