function load_savedata(data_index){
	ini_open("SaveData/data" + string(data_index) + "/savedata.ini");
	//ini_write_string("savedata_info", "Exist SaveData", "1");
	ini_close();
	
	rm_start_manager.room_stat = ROOM_START_STAT_LOADING;
	rm_start_manager.room_timer = 0.0;
	
	//背景にブラー効果を加える
	var _fx_struct1 = layer_get_fx( "blur_effect");
	var _fx_struct2 = layer_get_fx("color_effect");
	fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [0, 0]);
	fx_set_parameter(_fx_struct2, "g_Intensity", 0);
	fx_set_parameter(_fx_struct2, "g_TintCol", [START_BACKGROUND_COLOR_R, START_BACKGROUND_COLOR_G, START_BACKGROUND_COLOR_B, START_BACKGROUND_COLOR_ALPHA]);
	instance_destroy(obj_dataselect_button);
	//room_goto(rm_game);
}