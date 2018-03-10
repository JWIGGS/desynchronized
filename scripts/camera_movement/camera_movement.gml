var camera = argument0; ///@param camera
var width = argument1; ///@param displayWidth
var height = argument2; ///@param displayHeight
var zoom = argument3; ///@param zoom
camera_set_view_size(camera,width/zoom,height/zoom);
camera_set_view_pos(camera,x-(width/2/zoom),y-(height/2/zoom));