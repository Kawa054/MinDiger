#macro ROOM_START_STAT_PREPARE 1 //press to startの状態
#macro ROOM_START_STAT_SELECT 2  //press to startを押した後の状態
#macro ROOM_START_STAT_DATAS 3 //セーブデータの選択画面
#macro ROOM_START_STAT_LOADING 4 //ロード画面

room_stat = ROOM_START_STAT_PREPARE;
room_timer = 0.0
draw_set_font(font_main);
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_middle);

is_setting_opening = false;

instance_deactivate_object(obj_backbutton);
instance_deactivate_object(obj_setting_menu);

//起動時に全画面表示にする
if window_get_fullscreen(){
    //window_set_fullscreen(false);
}else{
    window_set_fullscreen(true);
}


//セーブデータのフォルダが存在しない場合, セーブデータ関連のファイルを作成する.
if !directory_exists("SaveData")
{
    directory_create("SaveData");
	for(var i = 1; i <= SAVEDATA_NUM; i++){
		directory_create("SaveData/data" + string(i));
		create_savedata_file("SaveData/data" + string(i));
		create_setting_file("SaveData/data" + string(i));
	}
}


//データ選択のインスタンス生成
dataselectbuttons[SAVEDATA_NUM] = noone;


for(var i = 1; i <= SAVEDATA_NUM; i++){
	ini_open("SaveData/data" + string(i) + "/savedata.ini");
	var is_exist_save_data = ini_read_string("savedata_info", "Exist SaveData", "-1");
	ini_close();
				
	var button_width = DATA_SELECT_BUTTON_WIDTH*0.9;
	var button_height = ((sprite_get_height(icon_data_select_chara) + 2*DATA_SELECT_CHARA_IMAGE_MARGIN))*0.9;
	var select_data_x = display_get_gui_width() / 2 - button_width/2;
	var select_data_y = (display_get_gui_height() - (3*DATA_SELECT_BUTTON_SEP_Y + 4*button_height))/2;
	var button = instance_create_layer(select_data_x , select_data_y + (i-1)*(DATA_SELECT_BUTTON_SEP_Y + button_height), "GUI", obj_data_button);
	
	button.type = 1;
	button.i = i-1;
	button.width = button_width;
	button.height = button_height;
	button.player_name = "DATA" + string(i) + "　かわさん";
	button.player_playtime = "プレイ時間　00:00:00";
	
	if(is_exist_save_data == "0"){
		button.type = 1;
	}else{
		button.type = 0;
	}
	instance_deactivate_object(button);
	dataselectbuttons[i-1] = button;
}
