require 'airport'
require './spec/weather_spec.rb'

describe Airport do

	

	let(:heathrow) {Airport.new}
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
			heathrow.land(boeing, sunny)
			allow(boeing).to receive(:parked!)
			expect(heathrow.planes.count).to eq 1
		end

		it 'should have one less plane when a plan takes off' do 
			heathrow.land(boeing, sunny)
			heathrow.take_off(boeing, sunny)
			allow(boeing).to receive(:flying!)
			expect(heathrow.planes.count).to eq 0
		end

end

	context "traffic control" do

		it 'should not let a plane land if it is at capacity' do
			10.times {heathrow.land(boeing, sunny)}
			expect{heathrow.land(boeing, sunny)}.to raise_error(RuntimeError)
		end

		it 'should not let a plane land if it is stormy' do
			heathrow.land(boeing, stormy)
			expect(heathrow.planes.count).to eq 0
		end

		it 'should not let a plane take-off if it is stormy' do
			heathrow.land(boeing, sunny)
			heathrow.take_off(boeing, stormy)
			expect(heathrow.planes.count).to eq 1
		end
end

end