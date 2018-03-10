var sprite = argument0; ///@param sprite
var drawX = argument1;  ///@param x
var drawY = argument2;  ///@param y
var halfWidth = argument3;  ///@param halfWidth
var object = argument4;  ///@param object
if(!defined){
	top = place_meeting(x,y-1,object);
	bottom = place_meeting(x,y+1,object);
	left = place_meeting(x-1,y,object);
	right = place_meeting(x+1,y,object);

	topLeftSubimage = ((2+left)*top)+(left*(1-top));
	topRightSubimage = ((2+right)*top)+(right*(1-top));
	bottomLeftSubimage = ((2+left)*bottom)+(left*(1-bottom));
	bottomRightSubimage = ((2+right)*bottom)+(right*(1-bottom));
	
	defined = true;
}

draw_sprite_part(sprite,topLeftSubimage,0,0,halfWidth,halfWidth,drawX,drawY);
draw_sprite_part(sprite,topRightSubimage,halfWidth,0,halfWidth,halfWidth,drawX+halfWidth,drawY);
draw_sprite_part(sprite,bottomLeftSubimage,0,halfWidth,halfWidth,halfWidth,drawX,drawY+halfWidth);
draw_sprite_part(sprite,bottomRightSubimage,halfWidth,halfWidth,halfWidth,halfWidth,drawX+halfWidth,drawY+halfWidth);
