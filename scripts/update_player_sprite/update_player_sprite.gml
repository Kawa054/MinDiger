function update_player_sprite(argument0, argument1){
	var x_direction = argument0;
	var y_direction = argument1;
	
	//スプライトの更新処理を行う
	mask_index = sprite[DOWN];
	if(y_direction == 0){
		if x_direction > 0 { obj_player.face = RIGHT };
		if x_direction < 0 { obj_player.face = LEFT };
	}

	if x_direction > 0 && obj_player.face == LEFT { obj_player.face = RIGHT };
	if x_direction < 0 && obj_player.face == RIGHT { obj_player.face = LEFT };
	if x_direction == 0 {
		if y_direction > 0 { obj_player.face = DOWN };
		if y_direction < 0 { obj_player.face = UP };
	}
	
	if(is_using_pickaxe){
		sprite_index = dig[obj_player.face];
	}else{
		sprite_index = sprite[obj_player.face];
	}

	// 移動していない場合は動きを止める
	// アニメーションの1フレームの画像に固定
	if x_direction == 0 && y_direction == 0 && !is_using_pickaxe {
		image_index = 0;
	}
}