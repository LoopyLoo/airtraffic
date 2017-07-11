


def instruct_to_land
	return confirm_landing if todays_weather!='stormy'
end

def instruct_to_takeoff
	confirm_takeoff
end

def prevent_takeoff
	'take off not allowed'
end

def add_to_airport_list
	planes=["big plane"]
	planes[0]
end

def todays_weather
	'good day for flying'
end
def confirm_landing
	'Landed'
end
def confirm_takeoff
	'Take off'
end