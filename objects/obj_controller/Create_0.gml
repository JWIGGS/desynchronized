/// @description 

//display constants
#macro displayWidth		1024
#macro displayHeight	768

//numbers import constants
#macro TRUE true
#macro FALSE false

//colors


global.colorChoice[0] = make_color_rgb(104,160,232);
global.colorChoice[1] = make_color_rgb(109,207,95);
global.colorChoice[2] = make_color_rgb(236,234,122);
global.colorChoice[3] = make_color_rgb(235,150,49);
global.colorChoice[4] = make_color_rgb(228,140,167);
global.colorChoice[5] = make_color_rgb(172,143,228);

global.colorChoiceAmount = 6;


global.colorSelected[0] = 0;
global.colorSelected[1] = 1;

global.color[0] = global.colorChoice[global.colorSelected[0]];
global.color[1] = global.colorChoice[global.colorSelected[1]];
global.color[2] = c_white;



//game settings
global.players = 2;

global.settingsVolumeBackground = 1;
global.settingsVolumeEffects = 1;
global.settingsFullscreen = false;
global.settingsPretty = false;
global.settingsExhibition = false;
global.settingsDebug = false;
global.settingsVsync = false;

//match settings
global.friendlyFire = false;
global.roundTotal = 5;
global.timeTotal = (60*60) + 2; // 1 min
global.zone = false;
global.multiplierHealth = 1;
global.multiplierDamage = 1;
global.multiplierSpeed = 1;
global.weaponSpawnChance = .4;
global.spawnStaggered = false;
global.healthRegen = false;


//maps
global.map[0] = "neighborhood";
global.map[1] = "mansion";
global.map[2] = "office";
global.mapAmount = 3;
global.mapSelected = 0;


//weapon stats
event_user(0);





