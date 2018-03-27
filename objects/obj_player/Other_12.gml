/// @description aiming

if(gamepad_is_connected(teamNumber)){
	
	aiming = abs(gamepad_axis_value(teamNumber,gp_axisrh))>(gamepad_deadzone*5) or abs(gamepad_axis_value(teamNumber,gp_axisrv))>(gamepad_deadzone*5);
	
	if(aiming){
		
		//relative aiming
		aimAngle = round(point_direction(0,0,gamepad_axis_value(teamNumber,gp_axisrh),gamepad_axis_value(teamNumber,gp_axisrv)))-90;

		if(aimAngle>180){
			aimAngle -= 360;	
		}

		imageAngle += aimAngle/50;

	}
	
	else{
		aimAngle = 0;
	}
	
	
	
	

}
