//何もしない
if(mode == BLACKOUT_DEACTIVATE){	


}else if(mode == BLACKOUT_LOADING){
	timer++;
	var loading_fps_rate = ((timer/60)*sprite_get_speed(spr_loading)) % sprite_get_number(spr_loading);
	show_debug_message(sprite_get_speed(spr_loading));
	draw_sprite_stretched(spr_loading, loading_fps_rate, 0, 0, window_get_width(), window_get_height());
//暗転開始
}else if(mode == BLACKOUT_START){
	timer++;
	if(timer <= LOADING_START_TIME*60){
		draw_set_colour(c_black);
		draw_set_alpha(timer / (LOADING_START_TIME*60));
		draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
		draw_set_alpha(1);
		//暗転しきったとき
		if(timer == LOADING_START_TIME * 60){
			//操作ができないようにする
			finished = true;
			global.active_draw_gui1 = false;
			global.active_operate = false;
			global.active_press_gui1 = false;
		}
	}
//暗転から戻る
}else if(mode == BLACKOUT_RETURN){
	timer++;
	if(timer <= LOADING_START_TIME*60){
		draw_set_colour(c_black);
		draw_set_alpha( (LOADING_START_TIME*60 - timer) / (LOADING_START_TIME*60) );
		draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
		draw_set_alpha(1);
	
		if(timer == LOADING_START_TIME * 60){
			finished = false;
			global.active_draw_gui1 = true;
			global.active_operate = true;
			global.active_press_gui1 = true;
		}
	}
}