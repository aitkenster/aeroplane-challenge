require 'airport'

describe 'airport' do

	let(:heathrow) {Airport.new}
	let(:boeing) {double :aeroplane, flying?: false}
	# let(:sunny) {double :weather, storm?: false}
	
	it 'should have no planes when created' do
		heathrow = Airport.new
		expect(heathrow.has_planes?).to be false
	end

	it 'has a capacity of 10 planes' do
		expect(heathrow.capacity).to eq 10
	end

	it 'should have one plane when a plane lands' do
		boeing = double :aeroplane
		heathrow.land(boeing)
		expect(heathrow.planes.count).to eq 1
	end

it 'should have one less plane when a plan takes off' do 
	heathrow.land(boeing)
	heathrow.take_off(boeing)
	expect(heathrow.planes.count).to eq 0
end

end