require 'aeroplane'

describe 'aeroplane' do 

	let(:boeing) {Aeroplane.new}
	let(:airbus) {Aeroplane.new.land!}
	let(:stormy) {double :weather, storm?: true}
	let(:sunny) {double :weather, storm?: false}

	it 'should be flying when created' do 
		expect(boeing.flying?).to be true
	end

	it 'should be able to land if the weather is not stormy'  do 
		boeing.land_dependent_on(sunny)
		expect(boeing.flying?).to be false
	end

	it 'should not be able to land if the weather is stormy' do
		boeing.land_dependent_on(stormy)
		expect(boeing.flying?).to be true
	end

	it 'should be able to take-off if the weather is not stormy' do
		airbus.take_off_dependent_on(sunny)
		expect(airbus.flying?).to be true
	end

	it 'should not be able to take-off if the weather is stormy' do
		airbus.take_off_dependent_on(stormy)
		expect(airbus.flying?).to be false
	end
	
end