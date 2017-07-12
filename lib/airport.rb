require './lib/weather'
require './lib/plane'

class Airport
	CAPACITY =50
	@planes=Array.new(10)
	
	def initialize(airport_name)
		@airport_name=airport_name
		@planes ||= []
	end
	
	def instruct_to_land(plane)
		if landing_allowed and not airport_full  then

			add_plane_to_list(plane)
		 else
		   'landing postponed'	
		 end
	 end

	
	def instruct_to_takeoff(plane)
		if take_off_allowed and plane.take_off_instructions()then 
			delete_plane_from_list(plane)
		else
				'take off not allowed'
		end
	end



	def take_off_allowed
		today=Weather.new()
		return true if today.todays_weather()!=0
		false
	end

	def landing_allowed
		today=Weather.new()
	 	return true if today.todays_weather() !=0 and not airport_full
		false
	end

	def add_plane_to_list(plane)
		@planes<< plane
	end

	def delete_plane_from_list(plane)
		@planes.delete plane
	end

	def return_planes
		if @planes.size!=0
			"Plane is #{@planes[0].name}"
		else
			nil
		end
	end

	def airport_full
		return false if @planes.size<= CAPACITY
	end
 
end 