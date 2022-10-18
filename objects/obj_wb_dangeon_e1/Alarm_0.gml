if(load_timer == array_length (_tex_array)){
	room_goto(rm_dangeon);
}else{
	if(load_timer == 0){
		set_loading_screen();
	}
	texture_prefetch(_tex_array[load_timer]);
	alarm[0] = 5;
	load_timer++;
}