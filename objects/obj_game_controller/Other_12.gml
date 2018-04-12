/// @description mode management


//do stuff based on mode
switch(global.mode){
	case "fade in finished":
		
		if(roomInit){
			if(overviewRound){
				//start countdown
				global.mode = "countdown";
				alarm[0] = 120;
				audio_play_sound(snd_count,1,false);

				
			}
			
			else{
				//go to selection
				global.mode = "selection in";
				alarm[0] = 10;
			}
			
		}
		//first round flyover
		else{
			global.mode = "flyover";
			alarm[0] = 300;
			audio_play_sound(snd_game_start,1,false);
		}
		break;
		
	case "flyover":
		//go to selection when timer is up
		if(alarm[0] = 0){
			global.mode = "selection in";
			alarm[0] = 10;
		}
		
		break;
		
	case "selection in":
		if(alarm[0] = 0){
			global.mode = "selection";	
		}
		break;
		
	case "selection":
		
		for(var i = 0; i<global.players; i++){
				
			//select timeline
			if(!global.playerSelectionReady[i]){
					
				//right
				if(global.controlRight[i]){
					if(alarm[i+1] = -1){
							
						//revoke player control from previous timeline
						with(global.playerControlObject[i]){
							playerControl = false;	
						}
							
						//wrap timeline selection
						global.playerSelection[i] = wrap(global.playerSelection[i]+1,0,global.roundTotal);
							
						//give new timeline player control
						with(obj_player){
							if(teamNumber = i and playerNumber = global.playerSelection[i]){
								global.playerControlObject[i] = id;	
								playerControl = true;
							}
						}
							
						//input delay
						alarm[i+1] = 30;
							
						//sound
						audio_play_sound(snd_blip,1,false);
					}
				}
					
				//left
				else if(global.controlLeft[i]){
					if(alarm[i+1] = -1){
							
						//revoke player control from previous timeline
						with(global.playerControlObject[i]){
							playerControl = false;	
						}
							
						//wrap timeline selection
						global.playerSelection[i] = wrap(global.playerSelection[i]-1,0,global.roundTotal);
							
						//give new timeline player control
						with(obj_player){
							if(teamNumber = i and playerNumber = global.playerSelection[i]){
								global.playerControlObject[i] = id;	
								playerControl = true;
							}
						}
						
						//input delay
						alarm[i+1] = 30;
							
						//sound
						audio_play_sound(snd_blip,1,false);
					}
				}
				//reset input delay
				else{
					alarm[i+1] = -1;
				}
				
			}
		
			//select pressed
			if(global.controlSelectPressed[i] or global.controlShootPressed[i]){
					
				if(global.playerMode[value_to_1d(global.playerSelection[i],i,global.roundTotal),global.timeMax]!="dead"){
						
					//timeline ready
					global.playerSelectionReady[i] = true;
					
						
					//sound
					audio_play_sound(snd_selected,1,false);
				}
					
				//dont give control to dead timeline
				else{
					audio_play_sound(snd_alarm_double,1,false);	
				}
					
			}
				
			//back pressed
			if(global.controlBackPressed[i]){
					
				//not ready
				global.playerSelectionReady[i] = false;
					
				//sound
				audio_play_sound(snd_selected,1,false);
					
			}
	
			
			
			
		}
		
		//check to proceed to countdown
		var bothReady = true;
		for(var i = 0; i<global.players; i++){
			if(!global.playerSelectionReady[i]){
				bothReady = false;	
			}
		}
		
		//go to countdown
		if(bothReady){
			global.mode = "selection out";
			alarm[0] = 10;
			
		}
		
		break;
		
	case "selection out":
	
		if(alarm[0] = 0){
			global.mode = "countdown";
			roomInit = true;
			alarm[0] = 120;
			audio_play_sound(snd_count,1,false);
		}
	
		break;
		
	case "countdown":
	
		//set mode when time is up
		if(alarm[0] = 0){
			if(overviewRound){
				global.mode = "overview";	
			}
			else{
				global.mode = "play";
			}
				
		}
		
		break;
		
	case "play":
	case "overview":
		
		//check if someone is resyncing to speed up game
		
		var speedCount = 0;
		var controlCount = 0;
		
		with(obj_player){
			if(playerControl){
				controlCount ++;
				if(resyncTime-global.timeCurrent>0){
					speedCount ++;	
				}
			}
		}
		
		if(speedCount>=global.players or controlCount = 0){
			room_speed = 120;
		}
		else{
			room_speed = 60;	
		}
		
		
		/*
		var isResync = false;
		var closestResyncTime = global.timeTotal;
		var playerControlCount = 0;
		with(obj_player){
			if(playerControl and resyncTime-global.timeCurrent>0 and resyncTime-global.timeCurrent<closestResyncTime and closestResyncTime != global.timeTotal+1){
				closestResyncTime = resyncTime-global.timeCurrent;
			}
			if(playerControl){
				playerControlCount++;	
			}
			if(resyncTime<3){
				closestResyncTime = global.timeTotal+1;	
			}
		}
		
		if((closestResyncTime > 0 and closestResyncTime< global.timeTotal) or playerControlCount = 0 and !global.controlSelect[0] and !global.controlSelect[1]){
			//speed up - nothing here yet
			room_speed = 90;
		}
		else{
			//normal - nothing here yet
			room_speed = 60;
		}
		*/
		

		//zone shrinking
		if(global.zone){
			global.zoneRadius = clamp((1-(global.timeCurrent/global.timeTotal)) * global.zoneRadiusStart,96,global.zoneRadiusStart);	
		}
		
		//players alive count
		array_fill_1d(global.playersCount,global.players,0);
		with(obj_player){
			global.playersCount[teamNumber] ++;
		}
		
		//last 10 seconds alarm every second
		if((global.timeTotal-global.timeCurrent) div 60 <11 and (global.timeTotal-global.timeCurrent) mod 60 = 0){
			audio_play_sound(snd_alarm,1,false);	
		}


		//reset team and player vars
		array_fill_1d(global.teamAlive,global.players,false);
		array_fill_1d(global.playerAliveCount,global.players,0);
		array_fill_1d(global.playerDesyncCount,global.players,0);
		
		
		//set team and player vars (constantly updated)
		if(global.timeCurrent >1){
			for(var i = 0; i<global.players; i++){
				for(var j = 0; j<global.roundTotal; j++){
					if(global.playerMode[value_to_1d(j,i,global.roundTotal),global.timeCurrent-1] = "alive"){
						global.teamAlive[i] = true;
						global.playerAliveCount[i]++;
					}
					if(global.playerMode[value_to_1d(j,i,global.roundTotal),global.timeCurrent-1] = "desync"){
						global.playerDesyncCount[i]++;
					}
		
				}
			}
		}
		
		
		//check for round ending early
		endEarlySum = 0;

		for(var i = 0; i<global.players; i++){
			endEarlySum += global.teamAlive[i];
			
			//desync player if other player is dead
			if(instance_exists(global.playerControlObject[i]) and global.playerControlObject[i]!=-1){

				
				if(global.playerControlObject[i].object_index!=obj_player and global.mode!="overview" and alarm[3] = -1 and global.timeCurrent>2){
					
					//force player to desync
					alarm[3] = 2;
				}
				
			}
			
		}
		
		
		
		//increase time
		global.timeCurrent ++;
		if(global.timeCurrent>global.timeMax){
			global.timeMax = global.timeCurrent;
		}

		
		//round over
		if(global.timeCurrent>=global.timeTotal-2 or (global.timeCurrent>2 and endEarlySum <= 1)){
		
			//overview round end
			if(overviewRound){
				global.mode = "victory";
				alarm[0] = 300;
				
				
				//victory sound
				audio_play_sound(snd_victory,1,false);
				
				//set victor
				if(global.playerAliveCount[0]+global.playerDesyncCount[0]>global.playerAliveCount[1]+global.playerDesyncCount[1]){
					victor = global.colorSelected[0];	
				}
				else if(global.playerAliveCount[0]+global.playerDesyncCount[0]<global.playerAliveCount[1]+global.playerDesyncCount[1]){
					victor = global.colorSelected[1];	
				}
				else{
					if(global.playerAliveCount[0]>global.playerAliveCount[1]){
						victor = global.colorSelected[0];
					}
					else if(global.playerAliveCount[0]<global.playerAliveCount[1]){
						victor = global.colorSelected[1];	
					}
					else{
						victor = global.colorSelected[global.global.colorChoiceAmount];	
					}
					
					
				}

				
			}
			//normal round end
			else{
				
				if(global.timeCurrent>=global.timeTotal-2){
					//kill all players
					with(obj_player){
						damage_object(id,hp);
						shotFromX = lengthdir_x(-10,point_direction(x,y,room_width/2,room_height/2));
						shotFromY = lengthdir_y(-10,point_direction(x,y,room_width/2,room_height/2));
					}
				}
				
				
				global.mode = "reverse countdown";
				alarm[0] = 120;	
			}
			
		}

		
		break;
		
	case "reverse countdown":

		//reverse time - shouldnt have effect on players
		global.timeCurrent += round(smooth_to_target(global.timeTotal-2,global.timeCurrent,25));
		
		//fade out
		if(alarm[0] = 0){
			global.mode = "fade out";
			with(obj_fade_controller){
				event_user(0);	
			}
		}
		break;
		
	case "fade out finished":
		
		if(gameOver){
			room_goto(rm_menu);
			instance_destroy();
		}
		else{
		
			//end round
			event_user(1);
	
			//begin new round
			event_user(0);
	
			global.mode = "fade in";
			with(obj_fade_controller){
				event_user(0);	
			}
		
		}
	
		break;
		
	case "victory":
		if(alarm[0] = 0){
	
			global.mode = "fade out";
			with(obj_fade_controller){
				event_user(0);	
			}
			
			with(obj_background_controller){
				//end track
				event_user(2);
			}
			
			gameOver = true;
		
		}

		break;
}


if(global.mode!="play"){
	room_speed = 60;	
}