x = window_get_width() / 2 - MODE_FREE_DGDATA_WIDTH / 2;
y = window_get_height() / 2 - MODE_FREE_DGDATA_HEIGHT / 2;
xstart = window_get_width() / 2 - MODE_FREE_DGDATA_WIDTH / 2;
ystart = window_get_height() / 2 - MODE_FREE_DGDATA_HEIGHT / 2;
width = MODE_FREE_DGDATA_WIDTH;
height = MODE_FREE_DGDATA_HEIGHT;

title = "";
type = DANGEON_TYPE_PLAIN;
dgid = DANGEON_ID_PLAIN1;
stairs = 1;
difficult = 1;
hasCleared = false;
texts = ["", "", "", ""];
enemy_img = [];

hover = 0;

//クリックされたときの処理
activate_button = function() {
	global.dangeon_name = title;
	global.dangeon_max_floor = stairs;
	global.dangeon_type = type;
	global.dangeon_id = dgid;
	global.dangeon_light_alpha = 0.7;
	
	//アイテム選択UIの表示
	instance_activate_object(obj_freeitem_menu);
	instance_activate_object(obj_itemselect_back);
	
	instance_deactivate_object(obj_backbutton);
	instance_deactivate_object(obj_dgdata_button_left);
	instance_deactivate_object(obj_dgdata_button_right);
	instance_deactivate_object(id);
	
	//create_popup(POPUP_ID_FREE_CONFIRM, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN, ["このダンジョンで遊びますか？"], [
		//make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
	//]);
}

//ホバーしていないときの処理
not_hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart - 6 - hovering * 40, 0.1);
}

//ホバーしているときの処理
hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart, 0.1);
}