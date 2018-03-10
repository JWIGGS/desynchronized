/// @description movement and aiming player control

if(gamepad_is_connected(teamNumber)){
	
	//aiming
	event_user(2);
	

	var spd = spdWalk*weapon_get_data(weaponDataSpeedMultiplier,weapon);
	
	
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

if(collision_movement(xSpd,0,par_collideable) or collision_movement(xSpd,0,par_indestructable)){
	xSpd = 0;	
}

x += xSpd;


if(collision_movement(0,ySpd,par_collideable) or collision_movement(0,ySpd,par_indestructable)){
	ySpd = 0;	
}
y += ySpd;


x = clamp(x,0,room_width);
y = clamp(y,0,room_height);
