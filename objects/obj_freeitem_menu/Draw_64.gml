draw_set_font(font_main);
//全体の描画
var color = make_colour_rgb(SETTINGS_BACKGROUND_COLOR_R, SETTINGS_BACKGROUND_COLOR_G, SETTINGS_BACKGROUND_COLOR_B);
draw_set_color(color);
draw_rectangle(x, y, x+width, y+height, false);

//上の四つの項目の描画
color = make_colour_rgb(SETTINGS_NON_SELECTED_COLOR_R, SETTINGS_NON_SELECTED_COLOR_G, SETTINGS_NON_SELECTED_COLOR_B);
draw_set_color(color);
draw_rectangle(x + 0*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + 0*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y, false);
draw_rectangle(x + 1*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + 1*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y, false);
draw_rectangle(x + 2*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + 2*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y, false);
	
//現在選択しているものを描画
color = make_colour_rgb(SETTINGS_BACKGROUND_COLOR_R, SETTINGS_BACKGROUND_COLOR_G, SETTINGS_BACKGROUND_COLOR_B);
draw_set_color(color);
draw_rectangle(x + state*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + state*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y, false);

//上部の文字描画
color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
draw_set_color(color);
draw_set_halign(fa_center);
draw_text(x + upper_width/2 + 0*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT/2-8, "ツルハシ");
draw_text(x + upper_width/2 + 1*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT/2-8, "HP");
draw_text(x + upper_width/2 + 2*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT/2-8, "アイテム");


//設定部の描画
color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
draw_set_color(color);
draw_set_halign(fa_left);

//決定ボタンの描画
if(decide_hover == -1){
	draw_sprite(icon_decide, 0, x + width - sprite_get_width(icon_decide), y + height + 30);
}else{
	draw_sprite(icon_decide_hover, 0, x + width - sprite_get_width(icon_decide_hover), y + height + 30);
}

switch(state){
	case FREEITEM_MENU_STATE_PICKAXE:
		if(pickaxe_id_hover != -1){
			color = c_black;
			draw_set_color(color);
			draw_set_alpha(0.1);
			if(pickaxe_id <= 3){
				draw_rectangle(x + 100 + pickaxe_id_hover*250, y + 40, x + 100 + pickaxe_id_hover*250 + 200, y + 40 + 200, false);
			}else{
				draw_rectangle(x + 100 + pickaxe_id_hover*250, y + 240, x + 100 + pickaxe_id_hover*250 + 200, y + 240 + 200, false);
			}
			draw_set_alpha(1);
			color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
			draw_set_color(color);
		}
		draw_sprite(icon_item_pickaxe1, 0, x + 100, y + 40);
		draw_sprite(icon_item_pickaxe2, 0, x + 350, y + 40);
		draw_sprite(icon_item_pickaxe3, 0, x + 600, y + 40);
		
		draw_line_width(x + 100, y + 450, x + width - 100, y + 450, 3);
		draw_sprite(get_pickaxe_sprite(pickaxe_id), 0, x + 100, y + 450);
		draw_text(x + 300, y + 480, get_pickaxe_name(pickaxe_id));
		draw_text(x + 320, y + 510, "-こうげき: " + string(get_pickaxe_power(pickaxe_id)) + "　　　" + "-ほりレベル: " + string(get_pickaxe_diglevel(pickaxe_id)));
		
		var p_text = get_pickaxe_text(pickaxe_id);
		draw_text(x + 320, y + 550, p_text[0]);
		draw_text(x + 320, y + 580, p_text[1]);
		draw_text(x + 320, y + 610, p_text[2]);
		
	break;
	
	case FREEITEM_MENU_STATE_HP:
	
		//HPの描画
		var hp = player_health;
		for(var i = 1; i <= PLAYER_HEALTH_MAX; i++){
			//HP(色付き)
			if(i <= floor(hp)){
				draw_sprite(spr_hp1, 0, x + 300 + 82*i, y + height / 2 - 130);
				continue;
			}
		
			//half HP
			if(hp > i-1 && hp < i){
				draw_sprite(spr_hp2, 0, x + 300 + 82*i, y + height / 2 - 130);
				continue;
			}
		
			//empty HP
			draw_sprite(spr_hp3, 0,x + 300 + 82*i, y + height / 2 - 130);
		}
	
		//ボタン
		if(health_hover == 0){
			draw_sprite(icon_dgdata_left, 0, x + 350 - 82, y + height / 2 - 120);
			draw_sprite(icon_dgdata_right_hover, 0, x + 830, y + height / 2 - 120);
		}else if(health_hover == 1){
			draw_sprite(icon_dgdata_left_hover, 0,x + 350 - 82, y + height / 2 - 120);
			draw_sprite(icon_dgdata_right, 0,x + 830, y + height / 2 - 120);
		}else{
			draw_sprite(icon_dgdata_left, 0,x + 350 - 82, y + height / 2 - 120);
			draw_sprite(icon_dgdata_right, 0,x + 830, y + height / 2 - 120);
		}
	
		//説明文
		draw_line_width(x + 100, y + 450, x + width - 100, y + 450, 3);
		draw_text(x + 120, y + 480, "HPを自由に設定できます。縛りプレイをしたい場合などにオススメです。");
	break;
	
	case FREEITEM_MENU_STATE_ITEMS:
		if(item_id_hover != -1){
			color = c_black;
			draw_set_color(color);
			draw_set_alpha(0.1);
			
			var i = floor(item_id_hover / 3);
			var j = item_id_hover % 3;
			draw_rectangle(x + 100 + j*350, y + 40 + i*140, x + 100 + j*350 + 210, y + 40 + i*140 + 120, false);
			
			draw_set_alpha(1);
			color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
			draw_set_color(color);
		}
		draw_sprite_stretched(icon_torch, 0, x + 100, y + 40, 120, 120);
		draw_text( x + 100 + 120 , y + 40 + 40, " × ");
		draw_text( x + 100 + 170 , y + 40 + 40, string(item_nums[0]));
		//draw_sprite(icon_item_pickaxe1, 0, x + 100, y + 280);
		//draw_sprite(icon_item_pickaxe1, 0, x + 100, y + 520);
						
		draw_sprite_stretched(icon_item_yari1, 0, x + 450, y + 40, 120, 120);
		draw_text( x + 450 + 120 , y + 40 + 40, " × ");
		draw_text( x + 450 + 170 , y + 40 + 40, string(item_nums[1]));
		draw_sprite_stretched(icon_item_yari2, 0, x + 450, y + 180, 120, 120);
		draw_text( x + 450 + 120 , y + 180 + 40, " × ");
		draw_text( x + 450 + 170 , y + 180 + 40, string(item_nums[4]));
		draw_sprite_stretched(icon_item_yari3, 0, x + 450, y + 320, 120, 120);
		draw_text( x + 450 + 120 , y + 320 + 40, " × ");
		draw_text( x + 450 + 170 , y + 320 + 40, string(item_nums[7]));
						
		draw_sprite_stretched(icon_item_portion1, 0, x + 800, y + 40, 120, 120);
		draw_text( x + 800 + 120 , y + 40 + 40, " × ");
		draw_text( x + 800 + 170 , y + 40 + 40, string(item_nums[2]));
		draw_sprite_stretched(icon_item_portion2, 0, x + 800, y + 180, 120, 120);
		draw_text( x + 800 + 120 , y + 180 + 40, " × ");
		draw_text( x + 800 + 170 , y + 180 + 40, string(item_nums[5]));
		draw_sprite_stretched(icon_item_portion3, 0, x + 800, y + 320, 120, 120);
		draw_text( x + 800 + 120 , y + 320 + 40, " × ");
		draw_text( x + 800 + 170 , y + 320 + 40, string(item_nums[8]));
		
		//説明文
		draw_line_width(x + 100, y + 450, x + width - 100, y + 450, 3);
		draw_sprite(get_holditem_sprite(item_id), 0, x + 100, y + 450);
		draw_text(x + 450, y + 480, get_holditem_name(item_id));
		var texts = get_holditem_text(item_id);
		draw_text(x + 470, y + 510, texts[0]);
		draw_text(x + 470, y + 540, texts[1]);
		
		draw_set_font(font_esc_button);
		draw_text(x + 260 , y + 525, " × ");
		draw_text(x + 330 , y + 525, string(item_nums[item_id]));
		draw_set_font(font_main);
		
		//プラマイナス
		if(plus_hover == -1){
			draw_sprite_stretched(icon_plus, 0, x + 350, y + 580, 40, 40);
		}else{
			draw_sprite_stretched(icon_plus_hover, 0, x + 350, y + 580, 40, 40);
		}
		
		if(minus_hover == -1){
			draw_sprite_stretched(icon_minus, 0, x + 300, y + 580, 40, 40);
		}else{
			draw_sprite_stretched(icon_minus_hover, 0, x + 300, y + 580, 40, 40);
		}
		
	break;
}