if(!is_collided){
	is_collided = true;
	load_timer = 0;
	_tex_array = texturegroup_get_textures("");
	set_blackout(BLACKOUT_START);
	alarm[0] = LOADING_START_TIME*60;
}