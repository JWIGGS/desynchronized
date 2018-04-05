/// @description move camera


if(player!=-1 and instance_exists(global.playerControlObject[player]) and alarm[0]<210){
	
	x += smooth_to_target(targetX,x,30);
	y += smooth_to_target(targetY,y,30);
	
	angle = rotate_speed(angle,targetAngle,angleSpd);
	
	zoom = 2-(alarm[0]/210);

}
camera_movement_split(view_camera[player],displayWidth/2,displayHeight,angle,zoom);
