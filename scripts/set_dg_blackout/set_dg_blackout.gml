function set_dg_blackout(mode){
	if(instance_exists(obj_dg_blackout)){
		obj_dg_blackout.timer = 0;
		obj_dg_blackout.mode = mode;
	}
}