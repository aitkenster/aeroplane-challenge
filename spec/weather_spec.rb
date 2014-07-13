require 'weather'

shared_examples 'the weather' do

	let(:location) { described_class.new }

	it 'should be sunny 7 times in 10 ' do
		allow(location).to receive(:weather_rand).and_return(2)
		location.weather_odds
		expect(location.storm?).to be false
	end

	it 'should be stormy 3 times in 10' do
		allow(location).to receive(:weather_rand).and_return(8)
		location.weather_odds
		expect(location.storm?).to be true
	end

	it 'should be able to have sunny weather after a storm' do
		allow(location).to receive(:weather_rand).and_return(8)
		location.weather_odds
		allow(location).to receive(:weather_rand).and_return(2)
		location.weather_odds
		expect(location.storm?).to be false
	end
end