function set_loading_screen(){
	if(instance_exists(obj_blackout)){
		obj_blackout.timer = 0;
		obj_blackout.mode = BLACKOUT_LOADING;
	}
}