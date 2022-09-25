if(start_game){
	room_timer++;
	instance_deactivate_layer(layer_get_id("GUI"));
	if(room_timer <= LOADING_START_TIME*60){
		draw_set_colour(c_black);
		draw_set_alpha(room_timer / (LOADING_START_TIME*60));
		draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
		draw_set_alpha(1);
		if(room_timer == LOADING_START_TIME*60){
			var lay_id = layer_get_id("Background");
			var back_id = layer_background_get_id(lay_id);
			layer_background_sprite(back_id, spr_background_black);
			
		}
	}else if(room_timer > LOADING_START_TIME*60 && room_timer <= (LOADING_START_TIME + LOADING_MIN_TIME)*60){
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_loading);
	}else if(room_timer > (LOADING_START_TIME + LOADING_MIN_TIME)*60 && room_timer <= (2*LOADING_START_TIME + LOADING_MIN_TIME)*60){
		draw_set_colour(c_black);
		draw_set_alpha( (room_timer - (LOADING_START_TIME + LOADING_MIN_TIME)*60) / (LOADING_START_TIME*60) );
		draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
		draw_set_alpha(1);
	}else{
		global.button_hovering_active = true;
		room_goto(rm_game);
	}
}else{
	if(!is_setting_opening){
		instance_activate_object(obj_backbutton);
	
		instance_activate_object(obj_ms_story_button);
		instance_activate_object(obj_ms_free_button);
		instance_activate_object(obj_ms_challenge_button);
		instance_activate_object(obj_ms_band_story);
		instance_activate_object(obj_ms_band_free);
		instance_activate_object(obj_ms_band_challenge);
	}
}