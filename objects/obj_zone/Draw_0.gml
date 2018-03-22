/// @description draw zone

event_inherited();

if(alarm[1]=-1){
	exit;	
}

draw_set_color(c_red);
draw_set_alpha(.3);
draw_circle(x,y,radius,false);
draw_set_alpha(1);
draw_circle_bar(x,y,radius, 4,32,32,0,360,1,c_red);

