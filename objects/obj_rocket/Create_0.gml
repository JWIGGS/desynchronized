/// @description 
angle = 0;
object = par_collideable;
parent = -1;
range =  point_distance(0,0,room_width,room_height);
rangeEffective = point_distance(0,0,room_width,room_height);
damage = 0;

weapon = "rocket"
spd = 4;
flightTime = 0;
coverObject = -1;

sndFly = audio_play_sound_player(snd_rocket_fly,1);