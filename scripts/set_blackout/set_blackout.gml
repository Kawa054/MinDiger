function set_blackout(mode){
	if(instance_exists(obj_blackout)){
		obj_blackout.timer = 0;
		obj_blackout.mode = mode;
	}
}