/// @description draw menu

//dont draw menu on loading screen
if(global.mode = "loading"){
	exit;	
}


//draw player responsiveness circles
for(var i = 0; i<2; i++){

	draw_sprite_ext(spr_player_indicator,i,playerResponseTargetX[i]-4,playerResponseTargetY[i]-4,4,4,0,global.color[i],.6)

	if(global.controlAvailable[global.controlType[i]]){
		draw_text_formatting(global.color[i],fa_center,fa_middle,font_36);
	}
	else{
		draw_text_formatting(c_red,fa_center,fa_middle,font_36);	
	}
	
	
	draw_text_transformed(playerResponseTargetX[i],playerResponseTargetY[i],"P"+string(i+1),1,1,playerResponseTargetAngle[i]);

}


//draw ui
switch(menuScreen){
	
	case "main":	
		event_user(0);
		break;
		
	case "play":
		event_user(1);
		break;
		
	case "arsenal":
		event_user(2);
		break;
	
	case "tutorial":
		event_user(3);
		break;
		
	case "custom":
		event_user(4);
		break;
		
	case "settings":
		event_user(5);
		break;
	
	case "map":
		event_user(6);
		break;
		
	case "save":
		event_user(7);
		break;
		
	case "load":
		event_user(8);
		break;
		
	case "settings audio":
		event_user(9);
		break;
		
	case "settings graphics":
		event_user(10);
		break;
		
	case "settings input":
		event_user(11);
		break;
}







