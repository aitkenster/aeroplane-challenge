require 'aeroplane'

describe 'aeroplane' do 

	let(:boeing) {Aeroplane.new}

	it 'should be flying when created' do 
		expect(boeing.flying?).to be true
	end

	it 'should be able to be landed' do
		boeing.parked!
		expect(boeing.flying?).to be false
	end	

end