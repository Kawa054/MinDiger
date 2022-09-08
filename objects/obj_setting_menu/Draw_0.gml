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


//設定部の描画
color = make_colour_rgb(SETTINGS_FONT_COLOR_R, SETTINGS_FONT_COLOR_G, SETTINGS_FONT_COLOR_B);
draw_set_color(color);
draw_set_halign(fa_left);
switch(state){
	case SETTINGS_STATE_GENERAL:
		draw_text(x + 100, y + 100, "現在開発中...");
		draw_text(x + 100, y + 150, "言語　　　←　日本語　→");
	break;
	
	case SETTINGS_STATE_KEY:
		draw_text(x + 100, y + 100, "前進　　　　:　W");
		draw_text(x + 100, y + 150, "移動（右）　:　A");
		draw_text(x + 100, y + 200, "移動（左）　:　S");
		draw_text(x + 100, y + 250, "後退　　　　:　D");
	break;
	
	case SETTINGS_STATE_VIDEO:
	
	break;
	
	case SETTINGS_STATE_AUDIO:
	break;
}