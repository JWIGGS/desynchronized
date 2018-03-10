/// @description load music complete
if(ds_map_find_value(async_load,"type") = "audiogroup_load" and ds_map_find_value(async_load,"group_id") = audiogroup_background){
	
	with(obj_background_controller){
		//start track
		event_user(0);	
	}
	
}

