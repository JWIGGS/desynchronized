/// @description intro time alarm

//create actual player camera
for(var i = 0; i<global.players; i++){
	with(instance_create_depth(0,0,0,obj_camera)){
		player = i;
		global.cameraObject[i] = id;
	}
}

instance_destroy();


