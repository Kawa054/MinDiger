var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
hovering = (mx >= x) && (mx <= x + width) && (my >= y) && (my <= y + height) ;

if (hovering){
	hovering_button();
	if (mouse_check_button_pressed(mb_left)) {
		clicked = true;
	} 
}else{
	not_hovering_button();
}

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		activate_button();
	}
	
}