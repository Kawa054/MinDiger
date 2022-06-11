//セーブデータのフォルダが存在しない場合, セーブデータ関連のファイルを作成する.
if !directory_exists("SaveData")
{
    directory_create("SaveData");
	for(i = 1; i <= SAVEDATA_NUM; i++){
		directory_create("SaveData/data" + string(i));
		create_savedata_file("SaveData/data" + string(i));
		create_setting_file("SaveData/data" + string(i));
	}
}

