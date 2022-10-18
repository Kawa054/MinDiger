if(load_timer == array_length (_tex_array)){
	global.player_spawn_x = 3265;
	global.player_spawn_y = 5691;
	room_goto(rm_game);
}else{
	if(load_timer == 0){
		set_loading_screen();
	}
	texture_prefetch(_tex_array[load_timer]);
	alarm[0] = 5;
	load_timer++;
}