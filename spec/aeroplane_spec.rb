require 'aeroplane'

describe 'aeroplane' do 

	let(:boeing) {Aeroplane.new}

	it 'should be flying when created' do 
		expect(boeing.flying?).to be true
	end

	it 'should be able to land if the weather is not stormy'  do 
		airbus = Aeroplane.new
		sunny = double :weather, storm?: false
		airbus.land_dependent_on(sunny)
		expect(airbus.flying?).to be false
	end

	it 'should not be able to land if the weather is stormy' do
		stormy = double :weather, storm?: true
		boeing.land_dependent_on(stormy)
		expect(boeing.flying?).to be true

	end
	
end