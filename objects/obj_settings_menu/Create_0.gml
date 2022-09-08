x = SETTING_BUTTON_X;
y = SETTING_BUTTON_Y;
xstart = SETTING_BUTTON_X;
ystart = SETTING_BUTTON_Y;

//クリックされたときの処理
activate_button = function() 
{
	show_debug_message("test");
}

//ホバーしていないときの処理
not_hovering_button = function() 
{
	sprite_index = icon_settings;
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = icon_settings_hover;
}
