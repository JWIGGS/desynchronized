/// @description create ice
var curX = (x div 8)*8;
var curY = (y div 8)*8;

for(var i = -8; i<9; i++){
	for(var j = -8; j<9; j++){
		with(instance_create_depth(curX+(i*8),curY + (j*8),0,obj_ice)){
			//circle
			if(point_distance(x+4,y+4,curX,curY)>64){
				instance_destroy();	
			}
			//player
			var nearestObject = instance_nearest(x+4,y+4,obj_player);
			
			if(nearestObject != noone and point_distance(x+4,y+4,nearestObject.x,nearestObject.y)<24){
				instance_destroy();
			}
			
			//aresnal player
			var nearestObject = instance_nearest(x+4,y+4,obj_player_arsenal);
			
			if(nearestObject != noone and point_distance(x+4,y+4,nearestObject.x,nearestObject.y)<24){
				instance_destroy();
			}
			

			
		}
	}
}




instance_destroy();