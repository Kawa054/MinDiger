x = SETTING_BUTTON_X;
y = SETTING_BUTTON_Y;
xstart = SETTING_BUTTON_X;
ystart = SETTING_BUTTON_Y;

//クリックされたときの処理
activate_button = function() {
	instance_deactivate_layer(layer_get_id("GUI"));
	instance_activate_object(obj_setting_menu);
	instance_activate_object(obj_backbutton);
	rm_start_manager.is_setting_opening = true;
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
