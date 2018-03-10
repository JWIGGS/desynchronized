var sound = argument0; ///@param sound
var player = argument1; ///@param player

returnSound = audio_play_sound(sound,0,false)

audio_sound_gain(returnSound,.4 + (player*.6),0);

return returnSound;

