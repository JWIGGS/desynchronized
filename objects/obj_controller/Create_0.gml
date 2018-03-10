/// @description 

//display constants
#macro displayWidth 1024
#macro displayHeight 768

//deadzone
#macro gamepad_deadzone .15

//numbers import constants
#macro TRUE true
#macro FALSE false

//colors
global.color[0] = make_color_rgb(104,160,232);
global.color[1] = make_color_rgb(109,207,95);
global.color[2] = c_white;


//game settings
global.players = 2;

global.settingsVolumeBackground = 1;
global.settingsVolumeEffects = 1;
global.settingsFullscreen = false;
global.settingsPretty = false;
global.settingsExhibition = false;
global.settingsDebug = false;
global.settingsMouse = true;
global.settingsSpeed = false;

//match settings
global.friendlyFire = false;
global.roundTotal = 5;
global.timeTotal = (60*60) + 2; // 1 min
global.zone = false;
global.multiplierHealth = 1;
global.multiplierDamage = 1;
global.multiplierSpeed = 1;
global.weaponRandom = false;
global.weaponSpawnChance = .4;
global.spawnStaggered = false;


//maps
global.map[0] = "neighborhood";
global.map[1] = "mansion";
global.mapAmount = 2;
global.mapSelected = 0;


//weapon stats
event_user(0);


//quit button
quitTime = 0;




