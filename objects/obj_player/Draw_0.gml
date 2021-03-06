/// @description draw image

if(global.playerControlObject[teamNumber]=id){

	if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent+1]="desync"){
		draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,global.color[teamNumber],.75);
	}
	else if(resyncTime-global.timeCurrent<30 and resyncTime!=-1 and global.mode = "play"){
		var scale = 1-((global.timeCurrent-resyncTime)/30);
		draw_sprite_ext(spr_player_indicator,teamNumber,x,y,(1-scale)*10,(1-scale)*10,imageAngle,global.color[teamNumber],scale*.75);
	}
}
else{
	draw_sprite_ext(spr_player_indicator,teamNumber,x,y,.8,.8,imageAngle,global.color[teamNumber],.4);
}
if(global.mode = "overview"){
	draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,global.color[teamNumber],.75);	
}

if(global.mode = "selection"){
	if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeMax]="dead"){
		draw_sprite_ext(spr_active_throwable_indicator,0,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,c_white,.75);
	}
	else{
		draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.8,1.2,2,0),wave(.8,1.2,2,0),imageAngle,global.color[teamNumber],.75);
	}
		
}

if(alarm[5]!=-1){
	shader_set(shd_white);
}


//no throwable weapon
if(throwableWeapon = ""){
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,weapon)),0,x,y,1,1,imageAngle,global.color[teamNumber],1);
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,weapon)),1,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(spr_player_hair,global.hairPlayerSpawn[playerNumber],x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(asset_get_index("spr_player_"+weapon),0,x,y,1,1,imageAngle,c_white,1);
}
//has throwable weapon
else{
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,throwableWeapon)),0,x,y,1,1,imageAngle,global.color[teamNumber],1);
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,throwableWeapon)),1,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(spr_player_hair,global.hairPlayerSpawn[playerNumber],x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(asset_get_index("spr_player_"+throwableWeapon),0,x,y,1,1,imageAngle,c_white,1);	
}


shader_reset();







if(aiMap!=-1 and keyboard_check(ord("H"))){
	mp_grid_draw(aiMap);	
}






