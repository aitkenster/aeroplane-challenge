require 'aeroplane'

describe 'aeroplane' do 

	it 'should be flying when created' do 
		boeing = Aeroplane.new
		expect(boeing.flying?).to be true
	end

	it 'should be able to land'  do 
		airbus = Aeroplane.new
		airbus.land
		expect(airbus.flying?).to be false
	end
	
end