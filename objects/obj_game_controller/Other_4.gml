/// @description initialize round and game

//deactivate loading screen
with(obj_loading_controller){
	loading = false;	
}

room_speed = 60;


if(room != rm_game_setup){
	
	if(!roomInit){
		
		//random seed
		randomize();
		
		//set random zone center
		global.zoneX = irandom_range(256,room_width-256);
		global.zoneY = clamp((room_height-global.zoneX)+irandom_range(-256,256),256,room_height-256);
		
		//set random weapon spawn
		with(obj_weapon_spawner){
			global.weaponSpawnX[global.weaponSpawnAmount] = x;
			global.weaponSpawnY[global.weaponSpawnAmount] = y;
			global.weaponType[global.weaponSpawnAmount] = "";
			if(random_chance(global.weaponSpawnChance)){
				global.weaponType[global.weaponSpawnAmount] = global.weapon[irandom_range(0,weaponAmount-1)];
			}
			global.weaponSpawnAmount++;
			
		}
		

		//random weapons

		for(var i = 0; i<global.roundTotal; i++){
				
			global.weaponPlayerSpawn[i] = global.weapon[irandom_range(0,weaponAmount-1)];
		
			while(weapon_get_data(weaponDataType,global.weaponPlayerSpawn[i])="throwable"){
				global.weaponPlayerSpawn[i] = global.weapon[irandom_range(0,weaponAmount-1)];
			}
		
		}
		
		
		//random hair
		for(var i = 0; i<global.roundTotal; i++){
				
				global.hairPlayerSpawn[i] = irandom_range(0,sprite_get_number(spr_player_hair)-1);
				
				for(var j = 0; j<i; j++){
					
					while(global.hairPlayerSpawn[i] = global.hairPlayerSpawn[j]){
						global.hairPlayerSpawn[i] = irandom_range(0,sprite_get_number(spr_player_hair)-1);
					}
					
				}
		
			}
		
		
		with(obj_background_controller){
			//start track
			event_user(0);
		}
		
		
		
		
	}

	
	//reset zone
	global.zoneRadius = global.zoneRadiusStart;
	
	//set weapon spawns
	with(obj_weapon_spawner){
		for(var i = 0; i<global.weaponSpawnAmount; i++){
			if(x = global.weaponSpawnX[i] and y = global.weaponSpawnY[i]){
				weapon = global.weaponType[i];	
				i = global.weaponSpawnAmount;
			}
		}
	}
	

	//start round
	event_user(0);

	//start fade
	with(obj_fade_controller){
		event_user(0);	
	}
	
	//create smart overview camera
	if(overviewRound){
		//deactivate split screen
		for(var i = 0; i<global.players; i++){
			view_visible[i] = false;
		}
		
		//activate final camera
		view_visible[7] = true;
		
		//create overview camera
		instance_create_depth(room_width/2,room_height/2,-100,obj_camera_overview);
		
	}
	
	else if roomInit{
		//bind camera to player
		for(var i = 0; i<global.players; i++){
			with(instance_create_depth(0,0,0,obj_camera)){
				player = i;
				global.cameraObject[i] = id;
			}
		}
	}
	else{
		for(var i = 0; i<global.players; i++){
			with(instance_create_depth(0,0,0,obj_camera_flyover)){
				player = i;
				global.cameraObject[i] = id;
				event_user(0);
			}
		}
	}


}

