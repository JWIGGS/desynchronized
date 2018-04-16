/// @description declare vars
room_speed = 60;

//game settings (not changed by custom)
global.roundCurrent = 0;
global.timeCurrent = 0;
global.timeMax = 2;

//game variables

global.playerX[0,0] = -1;
array_fill_2d(global.playerX,global.roundTotal*global.players,global.timeTotal,-1);

global.playerY[0,0] = -1;
array_fill_2d(global.playerY,global.roundTotal*global.players,global.timeTotal,-1);

global.playerRotation[0,0] = -1;
array_fill_2d(global.playerRotation,global.roundTotal*global.players,global.timeTotal,-1);

global.playerMode[0,0] = "desync";
array_fill_2d(global.playerMode,global.roundTotal*global.players,global.timeTotal,"desync");

global.playerAction[0,0] = "";
array_fill_2d(global.playerAction,global.roundTotal*global.players,global.timeTotal,"");

global.playerWeapon[0,0] = "";
array_fill_2d(global.playerWeapon,global.roundTotal*global.players,global.timeTotal,"");

global.playerThrowable[0,0] = "";
array_fill_2d(global.playerThrowable,global.roundTotal*global.players,global.timeTotal,"");

global.playerThrowablePower[0,0] = "";
array_fill_2d(global.playerThrowablePower,global.roundTotal*global.players,global.timeTotal,"");

global.playerAliveCount[0] = 0;
array_fill_1d(global.playerAliveCount,global.roundTotal*global.players,false);

global.playerDesyncCount[0] = 0;
array_fill_1d(global.playerDesyncCount,global.roundTotal*global.players,false);

global.teamDesyncCount[0] = 0;
array_fill_1d(global.teamDesyncCount,global.roundTotal*global.players,0);

global.teamAlive[0] = false;
array_fill_1d(global.teamAlive,global.players,false);

global.teamResync[0] = false;
array_fill_1d(global.teamResync,global.players,false);

global.playerControlObject[0] = -1;
array_fill_1d(global.playerControlObject,global.players,-1);

global.cameraObject[0] = -1;
array_fill_1d(global.cameraObject,global.players,-1);

global.playersCount[0] = 0;
array_fill_1d(global.playersCount,global.players,0);

global.playerSelectionReady[0] = false;
array_fill_1d(global.playerSelectionReady,global.players,false);

global.playerSelection[0] = 0;
array_fill_1d(global.playerSelection,global.players,0);

global.playerEndHealth[0] = 0;
array_fill_1d(global.playerEndHealth,global.roundTotal*global.players,0);

global.playerEndWeapon[0] = "";
array_fill_1d(global.playerEndWeapon,global.roundTotal*global.players,"");

global.playerEndAmmo[0] = 0;
array_fill_1d(global.playerEndAmmo,global.roundTotal*global.players,0);

global.weaponPlayerSpawn[0] = "pistol";
array_fill_1d(global.weaponPlayerSpawn,global.roundTotal,"pistol");

global.hairPlayerSpawn[0] = 0;
array_fill_1d(global.hairPlayerSpawn,global.roundTotal,0);

//weapon spawn positions
global.weaponSpawnX[0] = -1;
global.weaponSpawnY[0] = -1;
global.weaponType[0] = -1;
global.weaponSpawnAmount = 0;


//mode
global.mode = "fade in";

//depth - in fron of everything for zone purposes
depth = -200;

//match variables
roomInit = false;
overviewRound = false;
gameOver = false;


//victory texts
victor = 2;

winnerText[0] = "Blue Team Wins";
winnerText[1] = "Green Team Wins";
winnerText[2] = "Yellow Team Wins";
winnerText[3] = "Orange Team Wins";
winnerText[4] = "Pink Team Wins";
winnerText[5] = "Purple Team Wins";
winnerText[6] = "Draw";


//zone
global.zoneX = -1;
global.zoneY = -1;
global.zoneRadiusStart = 1088;
global.zoneRadius = global.zoneRadiusStart;
global.zoneDamage = 5;

//go to map
room_goto(asset_get_index("rm_game_"+global.map[global.mapSelected]));







  
