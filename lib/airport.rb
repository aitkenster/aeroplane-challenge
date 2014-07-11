class Airport

	def initialize
		@planes = []
	end

	def has_planes?
		@planes.any?
	end

end