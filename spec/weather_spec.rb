require 'weather'

describe 'weather' do

	let (:today) {Weather.new}

	it 'should have a default weather of sunny' do
		expect(today.storm?).to be false
	end

	it 'should be stormy 3 times in 10' do
		allow(today).to receive(:weather_rand).and_return(8)
		today.weather_odds
		expect(today.storm?).to be true

	end

end