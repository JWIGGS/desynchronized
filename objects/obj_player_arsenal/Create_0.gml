/// @description vars
event_inherited();

teamNumber = -1;


depth = -50;

weapon = "pistol"

clipSize = weapon_get_data(weaponDataClip,weapon);
clipCurrent = clipSize;

reloading = false;

reloadingSound = -1;


imageAngle = 90;


throwableWeapon = "";
throwableTime = -1;
throwableActive = false;

throwablePressed = false;
throwablePower = 0;
throwablePowerMax = 20;
throwablePowerAccel = .4;
throwablePowerHold = false;

hair = irandom_range(0,sprite_get_number(spr_player_hair)-1);



