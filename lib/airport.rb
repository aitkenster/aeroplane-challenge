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
		raise "Airport is full!" if is_full?
		planes << aeroplane
		aeroplane.parked!
	end 	     

	def take_off(aeroplane)
		planes.delete(aeroplane)
		aeroplane.flying!
	end

	def is_full?
		planes.count == capacity
	end

end