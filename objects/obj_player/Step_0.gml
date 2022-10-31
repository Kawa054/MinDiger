if(global.active_operate){
	//キーボード入力を受け付ける
	var right_key = keyboard_check(ord(global.setting_key_D));
	var left_key = keyboard_check(ord(global.setting_key_A));
	var up_key = keyboard_check(ord(global.setting_key_W));
	var down_key = keyboard_check(ord(global.setting_key_S));
	var action_key = keyboard_check(ord(global.setting_key_talk));

	// 右への移動なら1, 左への移動なら-1, 同時押しなら0として移動の方向係数を計算
	var x_direction = right_key - left_key;
	var y_direction = down_key - up_key;

	// プレイヤーの情報を更新する
	depth = -bbox_top;

	//ブロック壊す処理
	if (mouse_check_button_pressed(mb_left)) {
		player_action(x_direction, y_direction);
	} 

	if(!is_action){
		update_player_sprite(x_direction, y_direction);
		update_player_position(x_direction, y_direction);
	}else{
		image_index = 0;
	}

	//アクションの処理
	action(action_key, face);
	
	//インベントリ関係の処理
	update_player_inventory();
}