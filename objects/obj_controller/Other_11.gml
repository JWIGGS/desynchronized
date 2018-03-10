/// @description RESEIZE ENTIRE GAME
var height = window_get_height();
var width = window_get_width();

var heightRatio = height/displayHeight;
var widthRatio = width/displayWidth;

var widthBeingDisplayed = round(displayWidth*heightRatio);

display_set_gui_maximise(heightRatio,heightRatio,(width-widthBeingDisplayed)/2,0);