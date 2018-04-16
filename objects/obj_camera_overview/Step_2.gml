/// @description move camera

var targetXSum = 0;
var targetYSum = 0;
var totalTarget = 0;

var smallX = room_width;
var largeX = 0;
var smallY = room_height;
var largeY = 0;

with(obj_player){
	targetXSum += x;
	targetYSum += y;
	totalTarget++;
	
	if(x<smallX){
		smallX = x;	
	}
	if(y<smallY){
		smallY = y;	
	}
	
	if(x>largeX){
		largeX = x;
	}
	if(y>largeY){
		largeY = y;
	}
	
}


targetX = targetXSum/totalTarget;
targetY = targetYSum/totalTarget;

x += smooth_to_target(targetX,x,75);
y += smooth_to_target(targetY,y,75);

var distanceX = (largeX-smallX)+256;
var distanceY = (largeY-smallY)+256;

var zoomX = (room_width/distanceX) * (displayWidth/room_width);
var zoomY = (room_height/distanceY) * (displayHeight/room_height);

var zoom = 1;
if(zoomX<zoomY){
	zoom = zoomX;
}
else{
	zoom = zoomY;	
}

targetZoom += smooth_to_target(zoom,targetZoom,50);

if(totalTarget !=0){
	camera_movement(view_camera[7],displayWidth,displayHeight,targetZoom);
}
	
