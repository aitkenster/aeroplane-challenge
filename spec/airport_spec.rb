require 'airport'

describe 'airport' do

	let(:heathrow) {Airport.new}
	let(:boeing) {double :aeroplane, flying?: false, parked!: nil, flying!: nil}
	# let(:sunny) {double :weather, storm?: false}
	
	it 'should have no planes when created' do
		heathrow = Airport.new
		expect(heathrow.has_planes?).to be false
	end

	it 'has a capacity of 10 planes' do
		expect(heathrow.capacity).to eq 10
	end

	it 'should have one plane when a plane lands' do
		heathrow.land(boeing)
		allow(boeing).to receive(:parked!)
		expect(heathrow.planes.count).to eq 1
	end

	it 'should have one less plane when a plan takes off' do 
		heathrow.land(boeing)
		heathrow.take_off(boeing)
		allow(boeing).to receive(:flying!)
		expect(heathrow.planes.count).to eq 0
	end

	it 'should'
end