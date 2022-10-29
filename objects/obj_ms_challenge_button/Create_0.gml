width = sprite_get_width(spr_mode_challenge);
height = sprite_get_height(spr_mode_challenge);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	create_popup(POPUP_ID_GAME_CHALLENGE, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN,  ["", "チャレンジモードで遊びますか？"], [
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
	]);
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = spr_mode_challenge_hover;
	obj_ms_band_challenge.sprite_index = icon_mode_challenge_hover;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart - hovering * 4, 0.2);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	sprite_index = spr_mode_challenge;
	obj_ms_band_challenge.sprite_index = icon_mode_challenge;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart, 0.2);
}