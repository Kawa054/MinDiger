//データ生成済みの場合
if(type == 0){
	//ボタン全体の描画
	var color = make_colour_rgb(DATA_SELECT_BUTTON_BACKGROUNDCOLOR1_R, DATA_SELECT_BUTTON_BACKGROUNDCOLOR1_G, DATA_SELECT_BUTTON_BACKGROUNDCOLOR1_B);
	var mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*DATA_SELECT_BUTTON_MARGE_AMOUNT);
	draw_set_color(color);
	draw_rectangle(x, y, x+width, y+height, false);
	
	//キャラ関連の描画
	color = make_colour_rgb(DATA_SELECT_CHARA_IMAGE_BACKGROUNDCOLOR_R, DATA_SELECT_CHARA_IMAGE_BACKGROUNDCOLOR_G, DATA_SELECT_CHARA_IMAGE_BACKGROUNDCOLOR_B);
	mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*DATA_SELECT_BUTTON_MARGE_AMOUNT);
	draw_set_color(color);
	draw_rectangle(x+DATA_SELECT_CHARA_IMAGE_MARGIN, y+DATA_SELECT_CHARA_IMAGE_MARGIN, x+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width, y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height, false);
	draw_sprite(icon_data_select_chara, 0, x+DATA_SELECT_CHARA_IMAGE_MARGIN, y+DATA_SELECT_CHARA_IMAGE_MARGIN);
	
	//枠線の描画
	color = make_colour_rgb(DATA_SELECT_BUTTON_FRAMELINE1_COLOR_R, DATA_SELECT_BUTTON_FRAMELINE1_COLOR_G, DATA_SELECT_BUTTON_FRAMELINE1_COLOR_B);
	mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*DATA_SELECT_BUTTON_MARGE_AMOUNT);
	draw_set_color(color);
	draw_line_width(x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	draw_line_width(x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	draw_line_width(x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	draw_line_width(x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	
	//文字の描画
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_text(x+2*DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width, y+DATA_SELECT_CHARA_IMAGE_MARGIN, player_name);
	draw_text(x+2*DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width, y+DATA_SELECT_CHARA_IMAGE_MARGIN+40, player_playtime);
	
	
	//ストーリー進捗アイコンの描画
	draw_sprite(icon_data_select_bottom1, 0, x+2*DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width+0*(story_icon_size+5.0), y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-story_icon_size);
	draw_sprite(icon_data_select_bottom2, 0, x+2*DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width+1*(story_icon_size+5.0), y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-story_icon_size);
	draw_sprite(icon_data_select_bottom3, 0, x+2*DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width+2*(story_icon_size+5.0), y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-story_icon_size);
	draw_sprite(icon_data_select_bottom4, 0, x+2*DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_width+3*(story_icon_size+5.0), y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-story_icon_size);
	
	//各ボタンの描画
	draw_sprite(del_icon, 0, x + width - 2*(sp_sizeX + DATA_SELECT_BUTTON_ICON_SEP_X) - DATA_SELECT_BUTTON_ICON_MARGIN_X, y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-sp_sizeY);
	draw_sprite(dup_icon, 0, x + width - 1*(sp_sizeX + DATA_SELECT_BUTTON_ICON_SEP_X) - DATA_SELECT_BUTTON_ICON_MARGIN_X, y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-sp_sizeY);

//データ未生成時の場合
}else if(type == 1){
	//ボタン全体の描画
	//ボタン全体の描画
	var color = make_colour_rgb(DATA_SELECT_BUTTON_BACKGROUNDCOLOR2_R, DATA_SELECT_BUTTON_BACKGROUNDCOLOR2_G, DATA_SELECT_BUTTON_BACKGROUNDCOLOR2_B);
	mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*DATA_SELECT_BUTTON_MARGE_AMOUNT);
	draw_set_color(color);
	draw_rectangle(x, y, x+width, y+height, false);

	//枠線の描画
	color = make_colour_rgb(DATA_SELECT_BUTTON_FRAMELINE2_COLOR_R, DATA_SELECT_BUTTON_FRAMELINE2_COLOR_G, DATA_SELECT_BUTTON_FRAMELINE2_COLOR_B);
	mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*DATA_SELECT_BUTTON_MARGE_AMOUNT);
	draw_set_color(color);
	draw_line_width(x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	draw_line_width(x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	draw_line_width(x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+DATA_SELECT_CHARA_IMAGE_MARGIN/2, x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	draw_line_width(x + DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, x+width-DATA_SELECT_CHARA_IMAGE_MARGIN/2, y+height-DATA_SELECT_CHARA_IMAGE_MARGIN/2, DATA_SELECT_BUTTON_FRAMELINE_WIDTH);
	
	//データ追加ボタンの描画
	draw_sprite(plus_icon, 0, x + width/2 - sp_sizeX/2, y + height / 2 - sp_sizeY/2);
	
}