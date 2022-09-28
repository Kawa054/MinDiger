var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
hovering = (mx >= x) && (mx <= x + width) && (my >= y) && (my <= y + height) ;

if (hovering){
	
	//ホバー中の処理
	if(response_type == POPUP_RESPONSETYPE_YN){
		hover_yes = (mx >= x + width/2 - POPUP_SELECT_SEP_X - POPUP_YES_WIDTH && 
					 my >= y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_YES_HEIGHT &&
					 mx <= x + width/2 - POPUP_SELECT_SEP_X &&
					 my <= y + height - POPUP_SELECT_MARGIN_UNDER
		);
	
		hover_no =  (mx >= x + width/2 + POPUP_SELECT_SEP_X &&
					 my >= y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_NO_HEIGHT &&
					 mx <= x + width/2 + POPUP_SELECT_SEP_X + POPUP_NO_WIDTH &&
					 my <= y + height - POPUP_SELECT_MARGIN_UNDER
		);
	}else if(response_type == POPUP_RESPONSETYPE_Y){
		hover_yes = (mx >= x + width/2 - POPUP_YES_WIDTH/2 && 
					 my >= y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_YES_HEIGHT &&
					 mx <= x + width/2 + POPUP_YES_WIDTH/2 &&
					 my <= y + height - POPUP_SELECT_MARGIN_UNDER
		);
	}
	
	if (mouse_check_button_pressed(mb_left)) {
		clicked = true;
	}
	
}else{
	//ホバー状態でないときの処理
	hover_yes = false;
	hover_no = false;
}

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		//クリック時の処理(チャタリング回避)
		if(hover_yes){ 
			alarm[0] = 5;
		}
		if(hover_no){ 
			alarm[1] = 5;
		}
	}
	
}