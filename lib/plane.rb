class Plane

  def initialize(plane_name)
	@name=plane_name
  end

  def take_off_instructions()
	if  @flying
		'plane already in the air '
	else	
		@flying=true
	end
  end

  def landing_intructions()
	if  @flying
		@flying=false	
	else			
		'plane already landed '
	end
  end

def name()
	@name
end


end

