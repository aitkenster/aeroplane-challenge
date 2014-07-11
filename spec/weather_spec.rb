require 'weather'

describe 'weather' do

	let (:today) {Weather.new}

	it 'should have a default weather of sunny' do
		expect(today.storm?).to be false
	end

	it 'should be stormy 3 times in 10' do

		allow(today.weather_odds).to receive(:rand) {8}
		expect(today.storm?).to be true

	end

end