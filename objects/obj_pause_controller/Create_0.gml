/// @description vars

//pause image
backgroundImage = choose(spr_floor_grass,spr_floor_wood_dark,spr_floor_wood_light,spr_floor_tile,spr_floor_road_tile);


//texts
pauseText[0] = "resume";
pauseDescription[0] = "continue where you left off";

pauseText[1] = "back to menu";
pauseDescription[1] = "prematurely ends the game";

pauseTextAmount = 2;
pauseSelected = 0;

//controls
upPressed = false;
downPressed = false;
leftPressed = false;
rightPressed = false;
selectPressed = false;
backPressed = false;

backgroundSurface = -1;

audio_play_sound(snd_selected,1,false);
