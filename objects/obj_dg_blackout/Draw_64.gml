switch(mode){
	case BLACKOUT_DG_DEACTIVATE:
	break;
	
	//ダンジョン情報の描画（暗転解除）
	case BLACKOUT_DG_START1:
		timer++;
		if(timer <= BLACKOUT_TIME_DG*60){
			//ダンジョン情報の描画
			draw_set_colour(c_black);
			draw_set_alpha(1);
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			
			draw_set_color(c_white);
			draw_set_font(font_dangeon_load);
			draw_set_halign(fa_center);
			draw_text(window_get_width()/2, window_get_height()/2 - 100, global.dangeon_name);
			draw_text(window_get_width()/2, window_get_height()/2, string(global.dangeon_floor) + "F");
			
			//上から塗りつぶし
			draw_set_colour(c_black);
			draw_set_alpha( (BLACKOUT_TIME_DG*60 - timer) / (BLACKOUT_TIME_DG*60) );
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			draw_set_alpha(1);
	
			if(timer == BLACKOUT_TIME_DG * 60){
				set_dg_blackout(BLACKOUT_DG_SHOW);
				finished = false;
				global.active_draw_gui1 = false;
				global.active_operate = false;
				global.active_press_gui1 = false;
			}
		}
	break;
	
	//ダンジョン情報の描画
	case BLACKOUT_DG_SHOW:
		timer++;
		if(timer <= BLACKOUT_TIME_DG*60){
			//ダンジョン情報の描画
			draw_set_colour(c_black);
			draw_set_alpha(1);
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			
			draw_set_color(c_white);
			draw_set_font(font_dangeon_load);
			draw_set_halign(fa_center);
			draw_text(window_get_width()/2, window_get_height()/2 - 100, global.dangeon_name);
			draw_text(window_get_width()/2, window_get_height()/2, string(global.dangeon_floor) + "F");
			
	
			if(timer == BLACKOUT_TIME_DG * 60){
				set_dg_blackout(BLACKOUT_DG_RETURN1);
				finished = false;
				global.active_draw_gui1 = false;
				global.active_operate = false;
				global.active_press_gui1 = false;
			}
		}
	break;
	
	//ダンジョン情報の描画（暗転開始）
	case BLACKOUT_DG_RETURN1:
		timer++;
		if(timer <= BLACKOUT_TIME_DG*60){
			//ダンジョン情報の描画
			draw_set_colour(c_black);
			draw_set_alpha(1);
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			
			draw_set_color(c_white);
			draw_set_font(font_dangeon_load);
			draw_set_halign(fa_center);
			draw_text(window_get_width()/2, window_get_height()/2 - 100, global.dangeon_name);
			draw_text(window_get_width()/2, window_get_height()/2, string(global.dangeon_floor) + "F");
			
			draw_set_colour(c_black);
			draw_set_alpha(timer / (BLACKOUT_TIME_DG*60));
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			draw_set_alpha(1);
			
			//暗転しきったとき
			if(timer == BLACKOUT_TIME_DG * 60){
				//操作ができないようにする
				set_dg_blackout(BLACKOUT_DG_START2);
				finished = true;
				global.active_draw_gui1 = true;
				global.active_operate = false;
				global.active_press_gui1 = false;
			}
		}
	break;
	
	//ダンジョン開始時
	case BLACKOUT_DG_START2:
		timer++;
		if(timer <= BLACKOUT_TIME_DG*60){
			//上から塗りつぶし
			draw_set_colour(c_black);
			draw_set_alpha( (BLACKOUT_TIME_DG*60 - timer) / (BLACKOUT_TIME_DG*60) );
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			draw_set_alpha(1);
	
			if(timer == BLACKOUT_TIME_DG * 60){
				finished = true;
				global.active_draw_gui1 = true;
				global.active_operate = true;
				global.active_press_gui1 = true;
			}
		}
	break;
	
	//階段を下るときの暗転開始
	case BLACKOUT_DG_START_STAIR_UP:
	break;
}