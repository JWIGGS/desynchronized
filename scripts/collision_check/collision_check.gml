var xSpd = argument0; ///@param xSpd
var ySpd = argument1; ///@param ySpd
var object = argument2; ///@param object

if(!place_meeting(x,y,object)){
	if(xSpd!=0){
		if(place_meeting(x+xSpd,y,object)){
		    return true;
		}
		else{
			return false;
		}
	}
	else if(ySpd!=0){
		if(place_meeting(x,y+ySpd,object)){
		    return true;
		}
		else{
			return false;
		}
	}
	else{
		return false;
	}
}
