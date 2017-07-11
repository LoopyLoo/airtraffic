


def instruct_to_land
	return confirm_landing if take_off_allowed
end

def instruct_to_takeoff
	if take_off_allowed then 
		confirm_takeoff
	else
		'take off not allowed'
	end
end


def add_to_airport_list
	planes=["big plane"]
	planes[0]
end
def take_off_allowed
	return true if todays_weather!='stormy' and not airport_full
	false
end

def todays_weather
	'good day for flying'
	#'stormy'
end

def confirm_landing
	'Landed'
end

def confirm_takeoff
	'Take off'
end

def airport_full
	false

end
