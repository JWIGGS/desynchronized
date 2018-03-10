/// @description draw black and zone

//black border
draw_set_color(c_black);

draw_rectangle(-1024,-1024,room_width+1024,0,false);
draw_rectangle(-1024,room_height,room_width+1024,room_height+1024,false);
draw_rectangle(-1024,-1024,0,room_height+1024,false);
draw_rectangle(room_width,-1024,room_width+1024,room_height+1024,false);

//zone
if(global.zone){
	draw_set_color(c_red);
	draw_set_alpha(.5);
	draw_circle(global.zoneX,global.zoneY,2,false);
	draw_set_alpha(.3);
	draw_circle_bar(global.zoneX,global.zoneY,global.zoneRadius, (1088*2)-global.zoneRadius,32,32,0,360,1,c_red);
	draw_set_alpha(1);
	draw_circle_bar(global.zoneX,global.zoneY,global.zoneRadius, 4,32,32,0,360,1,c_red);
	
}

