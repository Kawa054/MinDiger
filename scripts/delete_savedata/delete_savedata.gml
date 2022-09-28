function delete_savedata(data_index){
	directory_destroy(SAVEDATA_DIR + string(data_index));
	create_savedata();
	global.created_data = true;
	room_restart();
}