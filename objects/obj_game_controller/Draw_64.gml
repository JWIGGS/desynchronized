/// @description ui

//draw map name
if(global.mode = "flyover" and alarm[0]>120){
	draw_text_formatting(c_white,fa_center,fa_middle,font_36);
	draw_set_alpha((alarm[0]-120)/180);
	draw_text_transformed(displayWidth/2,displayHeight/2,global.map[global.mapSelected],((1-((alarm[0]-120)/180)))*2,((1-((alarm[0]-120)/180)))*2,0);
	draw_set_alpha(1);
}


//time alpha
var alphaTime = 1;

switch(global.mode){
	case "flyover":
	case "fade in":
	case "fade in finished":
	case "selection":
		alphaTime = 0;
		break;
	case "countdown":
		alphaTime = (1-(obj_game_controller.alarm[0]/120))*2
		break;
}

draw_set_alpha(alphaTime);

//time
draw_text_formatting(c_white,fa_center,fa_middle,font_48);
draw_text(displayWidth/2, 48, (global.timeTotal-global.timeCurrent) div 60);

draw_set_alpha(1);


//alive and desync stats
if(global.mode!="overview"){
	
	//stat alpha
	var alphaStat = 1;
	
	if(global.mode = "play" and global.timeCurrent<10){
		alphaStat = global.timeCurrent/10;
	}
	
	draw_set_alpha(alphaStat);
	
	//alive and desync text
	for(var i = 0; i<global.players; i++){
		draw_text_formatting(global.color[i],i*2,fa_middle,font_16);
		var uiCenterX = (displayWidth/4)*((i*2)+1);
		var uiCenterDirection = 1-(i*2);
		draw_text(uiCenterX+(-uiCenterDirection*(240)),24,boolean_return(global.playerAliveCount[i]!=0,boolean_return(i=0,"alive ","")+string(global.playerAliveCount[i])+boolean_return(i=1," alive",""),""));
		draw_text(uiCenterX+(-uiCenterDirection*(240)),48,boolean_return(global.playerDesyncCount[i]!=0,boolean_return(i=0,"desync ","")+string(global.playerDesyncCount[i])+boolean_return(i=1," desync",""),""));
	}
	
	draw_set_alpha(1);
}


if(overviewRound){
	switch(global.mode){
		case "countdown":
			//draw countdown timer
			draw_text_formatting(c_white,fa_center,fa_middle,font_64);
			var time = (alarm[0] div 30);
			draw_set_alpha((alarm[0] mod 30)/30);
			if(time!=0){
				draw_text_transformed(displayWidth/2,(displayHeight/2)+32,time,1-((alarm[0] mod 30)/30),1-((alarm[0] mod 30)/30),0);
			}
			else{
				draw_text_transformed(displayWidth/2,(displayHeight/2)+32,"fight",1-((alarm[0] mod 30)/30),1-((alarm[0] mod 30)/30),0);
			}
			draw_set_alpha(1);
			
			//draw round status
			draw_text_formatting(c_white,fa_center,fa_middle,font_64);
			draw_set_alpha(alarm[0]/60);
			draw_text_transformed(displayWidth/2,(displayHeight/2)-64,"replay round",alarm[0]/120,alarm[0]/120,0);
			draw_set_alpha(1);
			
			break;
			
		case "victory":
		
			//draw round status
			draw_text_formatting(global.color[victor],fa_center,fa_middle,font_64);
			draw_set_alpha(1-(alarm[0]/300));
			draw_text_transformed(displayWidth/2,(displayHeight/2)-64,winnerText[victor],1-(alarm[0]/300),1-(alarm[0]/300),0);
			draw_set_alpha(1);
			
			
			

	}
	
}
else{
	
	//draw view separation lines
	
	draw_set_color(c_black);
	draw_line_width(displayWidth/2,0,displayWidth/2,displayHeight,2);


	for(var i = 0; i<global.players; i++){
		

		//gui mode text
		var uiCenterX = (displayWidth/4)*((i*2)+1);
		var uiCenterDirection = 1-(i*2);
		
		switch(global.mode){
	
			case "countdown":
		
				//draw countdown timer
				draw_text_formatting(c_white,fa_center,fa_middle,font_64);
				var time = (alarm[0] div 30);
				draw_set_alpha((alarm[0] mod 30)/10);
				if(time!=0){
					draw_text_transformed(uiCenterX,(displayHeight/2)+24,time,1-((alarm[0] mod 30)/30),1-((alarm[0] mod 30)/30),0);
				}
				else{
					draw_text_transformed(uiCenterX,(displayHeight/2)+24,"fight",1-((alarm[0] mod 30)/30),1-((alarm[0] mod 30)/30),0);
				}
				draw_set_alpha(1);
			
				//draw round status
			
				draw_text_formatting(c_white,fa_center,fa_middle,font_64);
				draw_set_alpha(alarm[0]/60);
				draw_text_transformed(uiCenterX,(displayHeight/2)-64,"round "+string(global.roundCurrent),alarm[0]/120,alarm[0]/120,0);
				draw_set_alpha(1);
				break;
				
				
			case "selection":
			
				draw_text_formatting(c_white,fa_center,fa_middle,font_24);
				if(global.playerSelectionReady[i]){
					draw_text(uiCenterX,displayHeight/2,"ready");
				}
				else{
					draw_text(uiCenterX,displayHeight/2,"select timeline");
				}
				

				
				break;
	
	
		}

	
	
	}





}