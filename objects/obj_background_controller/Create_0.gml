/// @description vars

#macro sndArpeg 0
#macro sndBass 1
#macro sndBloop 2
#macro sndDloop 3
#macro sndDrum 4
#macro sndLaser 5
#macro sndLoop 6
#macro sndMelody 7

#macro sndAmount 8


global.soundBackgroundPrefix[sndArpeg] = "arpeg";
global.soundBackgroundPrefix[sndBass] = "bass";
global.soundBackgroundPrefix[sndBloop] = "bloop";
global.soundBackgroundPrefix[sndDloop] = "dloop";
global.soundBackgroundPrefix[sndDrum] = "drum";
global.soundBackgroundPrefix[sndLaser] = "laser";
global.soundBackgroundPrefix[sndLoop] = "loop";
global.soundBackgroundPrefix[sndMelody] = "melody";


global.soundBackgroundAmount[sndArpeg] = 6;
global.soundBackgroundAmount[sndBass] = 6;
global.soundBackgroundAmount[sndBloop] = 7;
global.soundBackgroundAmount[sndDloop] = 6;
global.soundBackgroundAmount[sndDrum] = 7;
global.soundBackgroundAmount[sndLaser] = 5;
global.soundBackgroundAmount[sndLoop] = 8;
global.soundBackgroundAmount[sndMelody] = 9;


global.soundBackgroundId[0] = -1;
array_fill_1d(global.soundBackgroundId,sndAmount,-1);

loopTriggered = false;
loopOffset = 0;


dynamic = 2;
dynamicDirection = 1;
dynamicPrev = dynamic;