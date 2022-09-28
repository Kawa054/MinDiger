width = sprite_get_width(spr_mode_story);
height = sprite_get_height(spr_mode_story);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	create_popup(POPUP_ID_GAME_STORY, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN,  ["", "ストーリーモードで遊びますか？"], [
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
		make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
	]);
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = spr_mode_story_hover;
	obj_ms_band_story.sprite_index = icon_mode_story_hover;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart - hovering * 4, 0.2);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	sprite_index = spr_mode_story;
	obj_ms_band_story.sprite_index = icon_mode_story;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart, 0.2);
}