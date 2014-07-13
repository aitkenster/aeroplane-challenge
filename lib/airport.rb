require_relative 'weather'

class Airport

	include Weather

	def initialize
		super()
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

	def land(aeroplane, weather)
		raise "Airport is full!" if is_full?
		return "It's too stormy to land right now" if weather.storm?
		planes << aeroplane
		aeroplane.parked!
	end 	     

	def take_off(aeroplane, weather)
		return "It's too stormy to take-off right now" if weather.storm?
		planes.delete(aeroplane)
		aeroplane.flying!
	end

	def is_full?
		planes.count == capacity
	end

end