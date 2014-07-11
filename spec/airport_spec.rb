require 'airport'

describe 'airport' do
	
	it 'should have no planes when created' do
		heathrow = Airport.new
		expect(heathrow.has_planes?).to be false
	end

end