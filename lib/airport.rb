require_relative 'weather'

class Airport

	include Weather

	attr_reader :capacity, :planes

	def initialize
		@planes = []
		@capacity = 6
	end

	def has_planes?
		@planes.any?
	end

	def land(aeroplane)
		raise "Airport is full!" if is_full?
		return "It's too stormy to land right now" if storm?
		planes << aeroplane
		aeroplane.parked!
	end 	     

	def take_off(aeroplane)
		return "It's too stormy to take-off right now" if storm?
		planes.delete(aeroplane)
		aeroplane.flying!
	end

	def is_full?
		planes.count == capacity
	end

end