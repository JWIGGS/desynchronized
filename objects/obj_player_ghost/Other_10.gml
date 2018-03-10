/// @description movement and aiming player control

if(gamepad_is_connected(teamNumber)){
	
	//aiming
	event_user(2);

	var spd = spdWalk;
	
	//absolute movement
	/*
	if(abs(gamepad_axis_value(teamNumber,gp_axislh))>gamepad_deadzone){
		xSpd = gamepad_axis_value(teamNumber,gp_axislh)*spd;
	}
	else{
		xSpd = 0;	
	}
	
	if(abs(gamepad_axis_value(teamNumber,gp_axislv))>gamepad_deadzone){
		ySpd = gamepad_axis_value(teamNumber,gp_axislv)*spd;
		
	}
	else{
		ySpd = 0;	
		
	}
	*/
	
	
	//relative movement
	var moveDirectionX = 0;
	var moveDirectionY = 0;
	
	if(abs(gamepad_axis_value(teamNumber,gp_axislh))>gamepad_deadzone){
		moveDirectionX = gamepad_axis_value(teamNumber,gp_axislh)*spd;
	}
	else{
		moveDirectionX = 0;	
	}
	
	if(abs(gamepad_axis_value(teamNumber,gp_axislv))>gamepad_deadzone){
		moveDirectionY = gamepad_axis_value(teamNumber,gp_axislv)*spd;
		
	}
	else{
		moveDirectionY = 0;	
	}
	
	if(moveDirectionX !=0 or moveDirectionY!=0){
		var moveAngle = imageAngle-point_direction(0,0,moveDirectionX,-moveDirectionY)-90;
		var moveScale = abs(point_distance(0,0,moveDirectionX,moveDirectionY))
		
		xSpd = lengthdir_x(spd*moveScale,moveAngle);
		ySpd = lengthdir_y(spd*moveScale,moveAngle);
	}
	else{
		xSpd = 0;
		ySpd = 0;
	}
	
}

x += xSpd;

y += ySpd;


x = clamp(x,0,room_width);
y = clamp(y,0,room_height);
