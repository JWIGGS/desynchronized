var camera = argument0; ///@param camera
var width = argument1; ///@param displayWidth
var height = argument2; ///@param displayHeight
var angle = argument3; ///@param angle
var zoom = argument4; ///@param zoom



camera_set_view_size(camera,width/zoom,height/zoom);

camera_set_view_pos(camera,x-((width/2)/zoom)-lengthdir_y(140,angle),y-((height/2)/zoom)-lengthdir_x(140,angle));
	
camera_set_view_angle(camera,angle);




//
//camera_set_view_pos(camera,x-(width/2/zoom),y-(height/2/zoom));