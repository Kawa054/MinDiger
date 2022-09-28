x = window_get_width()/2 - sprite_get_width(icon_start_button)/2;
xstart = window_get_width()/2 - sprite_get_width(icon_start_button)/2;
y = EXIT_BUTTON_Y;
ystart = EXIT_BUTTON_Y;

width = sprite_get_width(icon_start_button);
height = sprite_get_height(icon_start_button);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	create_popup(POPUP_ID_EXIT, POPUP_INFOTYPE_EXIT, POPUP_RESPONSETYPE_YN, ["", "ゲームを終了しますか？"], [
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
	]);
}


//ホバーしているときの処理
hovering_button = function() 
{
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart - hovering * 2, 0.1);
	sprite_index = icon_exit_button_hover;
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart, 0.1);
	sprite_index = icon_exit_button;
}