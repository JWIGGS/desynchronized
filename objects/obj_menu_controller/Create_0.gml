/// @description vars

//feedback effect
playerResponseX[0] = 64;
playerResponseX[1] = displayWidth-64;

playerResponseY[0] = displayHeight-64;
playerResponseY[1] = displayHeight-64;

playerResponseTargetX[0] = playerResponseX[0];
playerResponseTargetY[0] = playerResponseY[0];

playerResponseTargetX[1] = playerResponseX[1];
playerResponseTargetY[1] = playerResponseY[1];

playerResponseMovement = 32;

playerResponseAngle[0] = 0;
playerResponseAngle[1] = 0;

playerResponseTargetAngle[0] = 0;
playerResponseTargetAngle[1] = 0;


//player input
upPressed = false;
downPressed = false;
leftPressed = false;
rightPressed = false;
selectPressed = false;
backPressed = false;


//menu glitch
titleX = displayWidth/2;
titleY = 256;
titleColor = c_black;
titleAngle = 0;
titleSize = 1;

//random seed
randomize();

//background
backgroundImage = choose(spr_floor_wood_dark,spr_floor_wood_light,spr_floor_road_tile);
backgroundId = layer_background_get_id(layer_get_id("Background"))
layer_background_sprite(backgroundId,backgroundImage);
layer_background_xscale(backgroundId,4);
layer_background_yscale(backgroundId,4);


//menu screen
menuScreen = "main";


//menu texts
menuText[0] = "Play";
menuDescription[0] = "battle it out in various modes";

menuText[1] = "Arsenal";
menuDescription[1] = "view awesome weapons";

menuText[2] = "How To Play";
menuDescription[2] = "for the noobs";

menuText[3] = "Settings";
menuDescription[3] = "change the game settings";

menuText[4] = "Exit";
menuDescription[4] = "this is not the button you are looking for";

menuTextAmount = 5;
menuSelected = 0;


//arsenal texts
weaponSelected[0] = 0;
weaponSelected[1] = 0;
weaponSelectedDirection[0] = 0;
weaponSelectedDirection[1] = 0;

arsenalPlayer [0] = -1;
arsenalPlayer [1] = -1;


//custom texts
customText[0] = "rounds: ";
customDescription[0] = "the more the merrier";

customText[1] = "friendly fire: ";
customDescription[1] = "another thing to worry about in the heat of battle";

customText[2] = "battle royale: ";
customDescription[2] = "how about a zone to herd you into one location";

customText[3] = "health scale: ";
customDescription[3] = "some extra heath wouldnt hurt right";

customText[4] = "damage scale: ";
customDescription[4] = "make every weapon overpowered so that none of them are";

customText[5] = "movement scale: ";
customDescription[5] = "you will never catch me, I'm the gingerbread man";

customText[6] = "weapon spawn chance: ";
customDescription[6] = "here comes the chaos";

customText[7] = "time limit: ";
customDescription[7] = "this party wont last forever";

customText[8] = "staggered spawns: ";
customDescription[8] = "its okay to be late to the party";

customText[9] = "health regen: ";
customDescription[9] = "rewards for avoiding combat? why not!";

customText[10] = "save preset";
customDescription[10] = "save some of the fun for next time (COMING SOON)";

customText[11] = "battle";
customDescription[11] = "let the games begin";

customText[12] = "back";
customDescription[12] = "";

customTextAmount = 13;
customSelected = 0;

customPosition = 0;
customHeight = 9;



//settings texts

settingsText[0] = "audio";
settingsDescription[0] = "get those sounds at the right levels";

settingsText[1] = "graphics";
settingsDescription[1] = "makes the game look cooler";

settingsText[2] = "input";
settingsDescription[2] = "play with controllers or keyboard";

settingsText[3] = "back";
settingsDescription[3] = "";

settingsSelected = 0;
settingsAmount = 4;



settingsAudioText[0] = "music volume: ";
settingsAudioDescription[0] = "blast that dynamic background music";

settingsAudioText[1] = "effects volume: ";
settingsAudioDescription[1] = "the sound of the clicks is really satisfying";

settingsAudioText[2] = "back";
settingsAudioDescription[2] = "";


settingsAudioSelected = 0;
settingsAudioAmount = 3;



settingsGraphicsText[0] = "fullscreen:";
settingsGraphicsDescription[0] = "go big or go home";

settingsGraphicsText[1] = "advanced rendering:";
settingsGraphicsDescription[1] = "beautifier for the fastest of computers";

settingsGraphicsText[2] = "exhibition mode:";
settingsGraphicsDescription[2] = "locks certain settings | hold escape to exit";

settingsGraphicsText[3] = "fps display:";
settingsGraphicsDescription[3] = "welcome to the nerd club";

settingsGraphicsText[4] = "display synchronization:";
settingsGraphicsDescription[4] = "prevents screen tearing";

settingsGraphicsText[5] = "back";
settingsGraphicsDescription[5] = "";

settingsGraphicsSelected = 0;
settingsGraphicsAmount = 6;


settingsControlGrabPlayer = -1;
settingsControlGrabFrom = -1;



//play texts
playText[0] = "standard battle";
playDescription[0] = "your default shooty shooty experience";

playText[1] = "blitz battle";
playDescription[1] = "speed, mayhem, explosions, and adrenaline";

playText[2] = "world war V";
playDescription[2] = "better plan ahead if you want to win";

playText[3] = "custom battle";
playDescription[3] = "whatever you say goes, even if it is absolute insanity";

playText[4] = "load preset";
playDescription[4] = "remember those rules you made a while ago";

playText[5] = "back";
playDescription[5] = "";


playTextAmount = 6;
playSelected = 0;

//tutorial texts

tutorialScreen = 0;
tutorialTitle[0] = "controls";
tutorialTitle[1] = "rules";

tutorialScreenAmount = 2;

rulesText[0] = "You control a new character each round.";
rulesText[1] = "Your actions are recorded to the timeline.";
rulesText[2] = "Previously controlled characters play back their timeline while you control new characters.";
rulesText[3] = "Characters are desynchronized when their life, weapon, or position do not match the timeline.";
rulesText[4] = "Desynchronized timelines are resynchronized in their own rounds before controlling new characters.";
rulesText[5] = "Eliminate all the opposing team to end each round and ultimately win the game.";

rulesTextAmount = 6;


//preset texts
presetName = "";
presetDefault = "name it whatever you want";
presetTime = 0;


//load texts
loadAmount = 0;
loadSelected = 0;
loadPosition = 0;
loadHeight = 6;
loadText[0] = "";
loadDelete = 0;
loadVars = false;
loadDescription = "";

mouseXPrev = mouse_x;
mouseYPrev = mouse_y;





