/// @description move camera
if(player!=-1 and instance_exists(global.playerControlObject[player]) and global.playerControlObject[player] !=-1){
	
	var playerObject = global.playerControlObject[player];
	
	//selection camera - loose
	if(global.mode = "selection"){
	
		targetX = playerObject.x;
		targetY = playerObject.y;
	
		x += smooth_to_target(targetX,x,5);
		y += smooth_to_target(targetY,y,5);
	
		targetAngle = 90-playerObject.imageAngle;
		angle = rotate_speed(angle,targetAngle,5);
	}
	
	//game camera - tight
	else{
		x = playerObject.x;
		y = playerObject.y;
	
		angle = 90-playerObject.imageAngle;
	}
	
	//screenshake
	if(alarm[0]!=-1){
		x += random_range(-2,2);
		y += random_range(-2,2);
		angle += random_range(-2,2);
	}
	
	
	//do camera thing
	camera_movement_split(view_camera[player],displayWidth/2,displayHeight,angle,2);
	
}