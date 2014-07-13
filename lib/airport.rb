class Airport

	def initialize
		@planes = []
	end

	def has_planes?
		@planes.any?
	end

	def capacity
		@capacity = 10
	end

	def planes
		@planes
	end

	def land(aeroplane)
		planes << aeroplane
		aeroplane.parked!
	end 	     

	def take_off(aeroplane)
		planes.delete(aeroplane)
		aeroplane.flying!
	end

end