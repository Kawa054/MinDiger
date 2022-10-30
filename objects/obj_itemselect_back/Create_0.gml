x = BACK_BUTTON_X;
y = BACK_BUTTON_Y;
xstart = BACK_BUTTON_X;
ystart = BACK_BUTTON_Y;

width = sprite_get_width(icon_backbutton);
height = sprite_get_height(icon_backbutton);

state = 0;

//クリックされたときの処理
activate_button = function() 
{
	instance_activate_object(obj_backbutton);
	instance_activate_object(obj_dgdata_button_right);
	instance_activate_object(obj_dgdata_button_left);
	instance_activate_object(obj_free_dgdata);
	
	instance_deactivate_object(obj_freeitem_menu);
	instance_deactivate_object(id);
}

//ホバーしていないときの処理
not_hovering_button = function() 
{
	sprite_index = icon_back;
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = icon_back_hover;
}
