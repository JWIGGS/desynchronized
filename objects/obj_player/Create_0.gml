/// @description vars
event_inherited();

//spd
xSpd = 0;
ySpd = 0;

spdWalk= 1.5*global.multiplierSpeed;
spdAim = 1.4*global.multiplierSpeed;

//angle
imageAngle = 0;
aimAngle = 0;
aiming = false;

//identifiers
teamNumber = -1;
playerNumber = -1;
playerControl = false;

//hp
hpMax = 100*global.multiplierHealth;
hp = hpMax;
hpEffect = hp;

//time
resyncTime = -1;

//depth
depth = -50;

//weapon
weapon = "pistol"
weaponPickedUp = false;


//shot from
shotFromX = 0;
shotFromY = 0;

//ammo
clipSize = weapon_get_data(weaponDataClip,weapon);
clipCurrent = clipSize;

//reloading
reloading = false;
reloadingSound = -1;

//throwable
throwableWeapon = "";
throwableTime = -1;
throwableActive = false;

throwablePressed = false;
throwablePower = 0;
throwablePowerMax = 20;
throwablePowerAccel = .4;
throwablePowerHold = false;

crosshairLength = 0;







