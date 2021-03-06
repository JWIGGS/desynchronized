/// @description load audiogroups and save files


//audiogroup load
if(!audio_group_is_loaded(audiogroup_background)){
	audio_group_load(audiogroup_background);
}
if(!audio_group_is_loaded(audiogroup_effects)){
	audio_group_load(audiogroup_effects);
}

//save files
global.saveFile = "save.ini";
ini_open(global.saveFile);

//new save file
if(!ini_key_exists("_settings","exists")){
	ini_write_string("_settings","exists","true");
	
	ini_write_real("_settings","volumeBackground",1);
	ini_write_real("_settings","volumeEffects",1);
	ini_write_real("_settings","fullscreen",0);
	ini_write_real("_settings","pretty",0);
	ini_write_real("_settings","debug",0);
	ini_write_real("_settings","vsync",0);
	ini_write_real("_settings","control0",2);
	ini_write_real("_settings","control1",3);
}

//load save settings
global.settingsVolumeBackground = ini_read_real("_settings","volumeBackground",1);
audio_group_set_gain(audiogroup_background,global.settingsVolumeBackground,0);

global.settingsVolumeEffects = ini_read_real("_settings","volumeEffects",1);
audio_group_set_gain(audiogroup_effects,global.settingsVolumeEffects,0);

global.settingsFullscreen = ini_read_real("_settings","fullscreen",0);
window_set_fullscreen(global.settingsFullscreen);

global.settingsPretty = ini_read_real("_settings","pretty",0);

global.settingsDebug = ini_read_real("_settings","debug",0);
show_debug_overlay(global.settingsDebug);

global.settingsVsync = ini_read_real("_settings","vsync",0);
display_reset(0,global.settingsVsync);

global.controlSaved[0] = ini_read_real("_settings","control0",2);
global.controlSaved[1] = ini_read_real("_settings","control1",3);



ini_close();
