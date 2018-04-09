var sound = argument0; ///@param sound
var player = argument1; ///@param player

returnSound = audio_play_sound(sound,0,false)


audio_sound_gain(returnSound,.4 + (player*.6),0);

if(room_speed>60){
	audio_sound_pitch(returnSound,1.5);	
}

return returnSound;

