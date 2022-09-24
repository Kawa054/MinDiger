width = sprite_get_width(spr_mode_challenge);
height = sprite_get_height(spr_mode_challenge);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{

}

//ホバーしているときの処理
hovering_button = function() 
{
	obj_ms_band_challenge.sprite_index = icon_mode_challenge_hover;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart - hovering * 4, 0.2);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	obj_ms_band_challenge.sprite_index = icon_mode_challenge;
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart, 0.2);
}