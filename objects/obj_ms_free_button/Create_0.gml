width = sprite_get_width(spr_mode_free);
height = sprite_get_height(spr_mode_free);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	create_popup(POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_Y, ["現在このモードでは遊べません", "アップデートをお待ちください"], [
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
	]);
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = spr_mode_free_hover;
	obj_ms_band_free.sprite_index = icon_mode_free_hover;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart - hovering * 4, 0.2);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	sprite_index = spr_mode_free;
	obj_ms_band_free.sprite_index = icon_mode_free;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart, 0.2);
}