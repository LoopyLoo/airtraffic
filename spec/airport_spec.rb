require 'airport'
	
describe 'myairport methods' do 
	

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
			expect(prevent_takeoff).to eq 'take off not allowed'
		end
	end
 end

