#macro ROOM_START_STAT_PREPARE 1 //press to startの状態
#macro ROOM_START_STAT_SELECT 2  //press to startを押した後の状態
#macro ROOM_START_STAT_DATAS 3 //セーブデータの選択画面

room_stat = ROOM_START_STAT_PREPARE;
draw_set_font(font_main);
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_middle);

is_menu_opening = false;

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

