/// @description draw image

if(global.playerControlObject[teamNumber]=id){

	if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent+1]="desync"){
		draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,c_white,.5);
	}
	else if(resyncTime-global.timeCurrent<30 and resyncTime!=-1){
		var scale = 1-((global.timeCurrent-resyncTime)/30);
		draw_sprite_ext(spr_player_indicator,teamNumber,x,y,(1-scale)*10,(1-scale)*10,imageAngle,c_white,scale*.5);
	}
}
if(global.mode = "overview"){
	draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,c_white,.75);	
}

if(global.mode = "selection"){
	if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeMax]="dead"){
		draw_sprite_ext(spr_active_throwable_indicator,0,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,c_white,.5);
	}
	else{
		draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,c_white,.5);
	}
		
}



if(alarm[5]!=-1){
	shader_set(shd_white);
}

//no throwable weapon
if(throwableWeapon = ""){
	draw_sprite_ext(asset_get_index("spr_player_"+weapon),teamNumber,x,y,1,1,imageAngle,c_white,1);
}
//has throwable weapon
else{
	draw_sprite_ext(asset_get_index("spr_player_"+throwableWeapon),teamNumber,x,y,1,1,imageAngle,c_white,1);	
}


shader_reset();













