//背景を暗くする
var color = c_black;
draw_set_color(color);
draw_set_alpha(0.6);
draw_rectangle(0, 0, window_get_width(), window_get_height(), false);
draw_set_alpha(1);

//全体の描画
var color = make_colour_rgb(ESC_WINDOW_OL_COLOR_R, ESC_WINDOW_OL_COLOR_G, ESC_WINDOW_OL_COLOR_B);
draw_set_color(color);
draw_rectangle(x - 8, y - 8, x + width + 8, y + height + 8, false);
var color = make_colour_rgb(ESC_WINDOW_COLOR_R, ESC_WINDOW_COLOR_G, ESC_WINDOW_COLOR_B);
draw_set_color(color);
draw_rectangle(x, y, x + width, y + height, false);

//バックボタンの描画
if(hover_state == 3){
	draw_sprite_ext(icon_plus_hover, 0, x + width - ESC_BACKBUTTON_SIZE - 20, y + 40, 1, 1, 45, c_white, 1);
}else{
	draw_sprite_ext(icon_plus, 0, x + width - ESC_BACKBUTTON_SIZE - 20, y + 40, 1, 1, 45, c_white, 1);
}

draw_set_font(font_esc_button);
var font_offset = 32;

//設定ボタンの描画
color = make_colour_rgb(ESC_BUTTON_OL_COLOR_R, ESC_BUTTON_OL_COLOR_G, ESC_BUTTON_OL_COLOR_B);
draw_set_color(color);
draw_rectangle(x + (width - ESC_BUTTON_WIDTH)/2 - ESC_BUTTON_OL_SIZE, y + 130 - ESC_BUTTON_OL_SIZE, x + (width + ESC_BUTTON_WIDTH)/2 + ESC_BUTTON_OL_SIZE, y + 130 + ESC_BUTTON_HEIGHT + ESC_BUTTON_OL_SIZE, false);

color = make_colour_rgb(ESC_BUTTON_COLOR_R, ESC_BUTTON_COLOR_G, ESC_BUTTON_COLOR_B);
if(hover_state == 0){
	var mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*(DATA_SELECT_BUTTON_MARGE_AMOUNT+0.13));
}
draw_set_color(color);
draw_rectangle(x + (width - ESC_BUTTON_WIDTH)/2, y + 130, x + (width + ESC_BUTTON_WIDTH)/2, y + 130 + ESC_BUTTON_HEIGHT, false);

color = c_white;
draw_set_color(color);
draw_set_halign(fa_center);
draw_text(x + width/2, y + 130 + font_offset, "設定");


//終了ボタンの描画
color = make_colour_rgb(ESC_BUTTON_OL_COLOR_R, ESC_BUTTON_OL_COLOR_G, ESC_BUTTON_OL_COLOR_B);
draw_set_color(color);
draw_rectangle(x + (width - ESC_BUTTON_WIDTH)/2 - ESC_BUTTON_OL_SIZE, y + 400 - ESC_BUTTON_OL_SIZE, x + (width + ESC_BUTTON_WIDTH)/2 + ESC_BUTTON_OL_SIZE , y + 400 + ESC_BUTTON_HEIGHT + ESC_BUTTON_OL_SIZE, false);

color = make_colour_rgb(ESC_BUTTON_COLOR_R, ESC_BUTTON_COLOR_G, ESC_BUTTON_COLOR_B);
if(hover_state == 1){
	var mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*(DATA_SELECT_BUTTON_MARGE_AMOUNT+0.13));
}
draw_set_color(color);
draw_rectangle(x + (width - ESC_BUTTON_WIDTH)/2, y + 400, x + (width + ESC_BUTTON_WIDTH)/2, y + 400 + ESC_BUTTON_HEIGHT, false);

color = c_white;
draw_set_color(color);
draw_set_halign(fa_center);
draw_text(x + width/2, y + 400 + font_offset, "ダンジョンを抜ける");


color = make_colour_rgb(ESC_BUTTON_OL_COLOR_R, ESC_BUTTON_OL_COLOR_G, ESC_BUTTON_OL_COLOR_B);
draw_set_color(color);
draw_rectangle(x + (width - ESC_BUTTON_WIDTH)/2 - ESC_BUTTON_OL_SIZE, y + 520 - ESC_BUTTON_OL_SIZE, x + (width + ESC_BUTTON_WIDTH)/2 + ESC_BUTTON_OL_SIZE, y + 520 + ESC_BUTTON_HEIGHT + ESC_BUTTON_OL_SIZE, false);

color = make_colour_rgb(ESC_BUTTON2_COLOR_R, ESC_BUTTON2_COLOR_G, ESC_BUTTON2_COLOR_B);
if(hover_state == 2){
	var mcolor = make_colour_rgb(DATA_SELECT_BUTTON_MARGE_COLOR_R, DATA_SELECT_BUTTON_MARGE_COLOR_G, DATA_SELECT_BUTTON_MARGE_COLOR_B);
	color = merge_color(color, mcolor, hover*(DATA_SELECT_BUTTON_MARGE_AMOUNT+0.13));
}
draw_set_color(color);
draw_rectangle(x + (width - ESC_BUTTON_WIDTH)/2, y + 520, x + (width + ESC_BUTTON_WIDTH)/2, y + 520 + ESC_BUTTON_HEIGHT, false);
color = c_white;
draw_set_color(color);
draw_set_halign(fa_center);
draw_text(x + width/2, y + 520 + font_offset, "ゲームを終了する");
