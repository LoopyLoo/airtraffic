require 'airport'
	
describe 'myairport methods' do 
	

		context 'Plane parked' do
		it'adds to the airport list of landed planes' do
		expect(add_to_airport_list).to eq 'big plane'
		end
	end

	context 'Instructing plane to land' do
		it 'lands the plane' do
		expect(instruct_to_land).to eq 'Landed'
		end
	end

	context 'Instructing plane to take off' do
		it 'take off' do
			expect(instruct_to_takeoff).to eq 'Take off'
		end
	end

	context 'take off permission' do
		it 'stops take off' do
			expect(take_off_allowed).to eq false
		end

		it 'checks the weather' do
			
			expect(todays_weather).to eq 'good day for flying'
		end

	end




 end

