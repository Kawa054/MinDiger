width = ESC_WINDOW_WIDTH;
height = ESC_WINDOW_HEIGHT;

x = (window_get_width() - width) / 2;
y = (window_get_height() - height) / 2;

state = 0;
hover = 0;
hovering = 0;
hover_state = -1;
clicked = false;

instance_deactivate_object(obj_setting_menu);
instance_deactivate_object(obj_backbutton);