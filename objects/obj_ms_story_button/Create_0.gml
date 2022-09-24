width = sprite_get_width(spr_mode_story);
height = sprite_get_height(spr_mode_story);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	room_goto(rm_game);
}

//ホバーしているときの処理
hovering_button = function() 
{
	obj_ms_band_story.sprite_index = icon_mode_story_hover;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart - hovering * 4, 0.2);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	obj_ms_band_story.sprite_index = icon_mode_story;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart, 0.2);
}