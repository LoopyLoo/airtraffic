require 'airport'
require 'Weather'
require 'plane'
	
describe 'testing airport class' do 
	
	
	context 'Instructing plane to land' do
		it 'lands the plane' do
			Heathrow=Airport.new("Heathrow")
			landing_plane=Plane.new("boing707")
			Heathrow.instruct_to_land(landing_plane)
			expect(Heathrow.return_planes).to eq 'Plane is boing707'
		end
	end


	context 'Instructing plane to take off' do
		it 'take off' do
			Heathrow=Airport.new("Heathrow")
			takingoff_plane=Plane.new("cesna")
			Heathrow.instruct_to_takeoff(takingoff_plane)
			expect(Heathrow.return_planes).to eq nil		
		end
	end

		context 'Plane parked' do
		it'adds to the airport list of landed planes' do
		Heathrow=Airport.new("Heathrow")
		added_plane=Plane.new("spitfire")
		Heathrow.add_plane_to_list(added_plane)
		expect(Heathrow.return_planes).to eq 'Plane is spitfire'
		end
	end

	context 'take off permission' do
		it 'stops take off' do
			expect(Heathrow.take_off_allowed).to eq true
		end

		it 'checks the weather' do
			today=Weather.new()
			expect(today.todays_weather).to_not eq 0
		end

	end




 end

