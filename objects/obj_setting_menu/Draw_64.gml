//全体の描画
var color = make_colour_rgb(SETTINGS_BACKGROUND_COLOR_R, SETTINGS_BACKGROUND_COLOR_G, SETTINGS_BACKGROUND_COLOR_B);
draw_set_color(color);
draw_rectangle(x, y, x+width, y+height, false);

//上の四つの項目の描画
color = make_colour_rgb(SETTINGS_NON_SELECTED_COLOR_R, SETTINGS_NON_SELECTED_COLOR_G, SETTINGS_NON_SELECTED_COLOR_B);
draw_set_color(color);
draw_roundrect(x + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y, false);
draw_roundrect(x + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y, false);
draw_roundrect(x + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y, false);
draw_roundrect(x + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y, false);
	
//現在選択しているものを描画
color = make_colour_rgb(SETTINGS_BACKGROUND_COLOR_R, SETTINGS_BACKGROUND_COLOR_G, SETTINGS_BACKGROUND_COLOR_B);
draw_set_color(color);
draw_roundrect(x + state*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + state*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y, false);

//上部の文字描画
color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
draw_set_color(color);
draw_set_halign(fa_center);
draw_text(x + upper_width/2 + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT/2-8, "一般");
draw_text(x + upper_width/2 + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT/2-8, "操作");
draw_text(x + upper_width/2 + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT/2-8, "ビデオ");
draw_text(x + upper_width/2 + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT/2-8, "オーディオ");

//その他装飾
draw_sprite(icon_settings_bg1, 0, x + width - sprite_get_width(icon_settings_bg1), y + height -sprite_get_height(icon_settings_bg1));

//決定ボタンの描画
if(decide_hover == -1){
	draw_sprite(icon_decide, 0, x + width - sprite_get_width(icon_decide), y + height + 30);
}else{
	draw_sprite(icon_decide_hover, 0, x + width - sprite_get_width(icon_decide_hover), y + height + 30);
}

//設定部の描画
color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
draw_set_color(color);
draw_set_halign(fa_left);
switch(state){
	case SETTINGS_STATE_GENERAL:
		draw_text(x + 100, y + 100, "言語　:　日本語");
	break;
	
	case SETTINGS_STATE_KEY:
		if(change_hover != -1){
			color = c_black;
			draw_set_color(color);
			draw_set_alpha(0.1);
			draw_rectangle(x + 366, y + 98 + 50*change_hover, x + 366 + 62, y + 98 + 50*change_hover + 30, false);
			draw_set_alpha(1);
			color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
			draw_set_color(color);
		}
		draw_text(x + 100, y + 100, "前進　　　　:　" + setting_key_W);
		draw_text(x + 100, y + 150, "移動（右）　:　" + setting_key_D);
		draw_text(x + 100, y + 200, "移動（左）　:　" + setting_key_A);
		draw_text(x + 100, y + 250, "後退　　　　:　" + setting_key_S);
		draw_text(x + 100, y + 300, "話す　　　　:　" + setting_key_talk);
		for(var i = 0; i < 5; i++){
			draw_text(x + 370, y + 100 + 50*i, "変更");
		}
		
		if(change >= 0){
			if(cursor == "|"){
				 draw_line_width(x + 290, y + 80 + 50*change + 50, x + 330, y + 80 + 50*change + 50, 2);
			}
		}
		
		draw_text(x + 100, y + 400, "基本アクション  :　左クリック");
		draw_text(x + 100, y + 450, "持ち物変更（上）:　ホイール上");
		draw_text(x + 100, y + 500, "持ち物変更（下）:　ホイール下");
		
	break;
	
	case SETTINGS_STATE_VIDEO:
		
		if(on_off_hover != -1){
			color = c_black;
			draw_set_color(color);
			draw_set_alpha(0.1);
			
			var i = floor(on_off_hover / 2);
			var j = on_off_hover % 2;
			draw_rectangle(x + 370 + 120*j, y + 90 + 50*i, x + 370 + 120*j + 70, y + 90 + 50*i + 40, false);
		}
		
		for(var i = 0; i <= 2; i++){
			draw_set_alpha(1);
			if(i == 0){ draw_line_width(x + 370 + 120*(1-setting_video_hideUI), y + 90 + 50*i + 40, x + 370 + 120*(1-setting_video_hideUI) + 70, y + 90 + 50*i + 40, 2); }
			if(i == 1){ draw_line_width(x + 370 + 120*(1-setting_video_hideKeyNavigation), y + 90 + 50*i + 40, x + 370 + 120*(1-setting_video_hideKeyNavigation) + 70, y + 90 + 50*i + 40, 2); }
			if(i == 2){ draw_line_width(x + 370 + 120*(1-setting_video_hideESCNavigation), y + 90 + 50*i + 40, x + 370 + 120*(1-setting_video_hideESCNavigation) + 70, y + 90 + 50*i + 40, 2); }
		}
		
		color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
		draw_set_color(color);
		
		draw_text(x + 100, y + 100, "UIの表示　　　　:　");
		draw_text(x + 380, y + 100, "ON");
		draw_text(x + 500, y + 100, "OFF");
		
		draw_text(x + 100, y + 150, "操作キーの表示　:　");
		draw_text(x + 380, y + 150, "ON");
		draw_text(x + 500, y + 150, "OFF");
		 
		draw_text(x + 100, y + 200, "特殊操作の表示　:　");
		draw_text(x + 380, y + 200, "ON");
		draw_text(x + 500, y + 200, "OFF");
		
		draw_text(x + 100, y + 450, "UIの表示はゲーム中の画面UIのON/OFFを切り替えます。");
		draw_text(x + 100, y + 500, "操作キーの表示は各UIに対応する操作をどのキーで行うか分かりやすくします。");
		draw_text(x + 100, y + 550, "特殊操作の表示はESCキーでの操作などの特殊な操作の説明を表示します。");		
	break;
	
	case SETTINGS_STATE_AUDIO:
		draw_text(x + 100, y + 100, "主音量　　　　　");
		draw_text(x + 100, y + 150, "効果音（SFX）　");
		draw_text(x + 300, y + 100, string(setting_volume_main));
		draw_text(x + 300, y + 150, string(setting_volume_sfx));
		
		draw_line_width(x + 390, y + 110, x + 690, y + 110, 5);
		draw_circle(x + 390 + 3*setting_volume_main, y + 110, 11, false); 
		draw_line_width(x + 390, y + 160, x + 690, y + 160, 5);
		draw_circle(x + 390 + 3*setting_volume_sfx , y + 160, 11, false);
	break;
}


