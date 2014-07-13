require 'airport'
require './spec/weather_spec.rb'
require 'weather'

describe Airport do

	

	let(:heathrow) {Airport.new}
	let(:gatwick) {Airport.new}
	let(:boeing) {double :Aeroplane, flying?: false, parked!: nil, flying!: nil}
	let(:sunny) {double :Weather, storm?: false}
	let(:stormy) {double :Weather, storm?: true}

	it_behaves_like 'the weather'

	context "logistics" do
	
		it 'should have no planes when created' do
			expect(heathrow.has_planes?).to be false
		end

		it 'has a capacity of 10 planes' do
			expect(heathrow.capacity).to eq 10
		end

		it 'should have one plane when a plane lands' do
			allow(heathrow).to receive(:storm?).and_return(false)
			heathrow.land(boeing)
			allow(boeing).to receive(:parked!)
			expect(heathrow.planes.count).to eq 1
		end

		it 'should have one less plane when a plan takes off' do 
			allow(heathrow).to receive(:storm?).and_return(false)
			heathrow.land(boeing)
			heathrow.take_off(boeing)
			allow(boeing).to receive(:flying!)
			expect(heathrow.planes.count).to eq 0
		end

end

	context "traffic control" do

		it 'should not let a plane land if it is at capacity' do
			allow(heathrow).to receive(:storm?).and_return(false)
			10.times {heathrow.land(boeing)}
			expect{heathrow.land(boeing)}.to raise_error(RuntimeError)
		end

		it 'should not let a plane land if it is stormy' do
			allow(gatwick).to receive(:storm?).and_return(true)
			gatwick.land(boeing)
			expect(gatwick.planes.count).to eq 0
		end

		it 'should not let a plane take-off if it is stormy' do
			gatwick.planes << boeing
			allow(gatwick).to receive(:storm?).and_return(true)
			gatwick.take_off(boeing)
			expect(gatwick.planes.count).to eq 1
		end
end

# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
  it 'all planes can land and all planes can take off' do
  

  end

end