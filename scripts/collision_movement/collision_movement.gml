var xSpd = argument0; ///@param xSpd
var ySpd = argument1; ///@param ySpd
var object = argument2; ///@param object

if(!place_meeting(x,y,object)){
	if(xSpd!=0){
		if(place_meeting(x+xSpd,y,object)){
		    while(!place_meeting(x+sign(xSpd),y,object)){
		        x += sign(xSpd);
		    }
		    return true;
		}
		else{
			return false;
		}
	}
	else if(ySpd!=0){
		if(place_meeting(x,y+ySpd,object)){
		    while(!place_meeting(x,y+sign(ySpd),object)){
		        y += sign(ySpd);
		    }
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
