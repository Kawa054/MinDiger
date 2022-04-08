function update_player_sprite(argument0, argument1){
	var x_direction = argument0;
	var y_direction = argument1;
	
	//スプライトの更新処理を行う
	mask_index = sprite[DOWN];
	if(y_direction == 0){
		if x_direction > 0 { face = RIGHT };
		if x_direction < 0 { face = LEFT };
	}

	if x_direction > 0 && face == LEFT { face = RIGHT };
	if x_direction < 0 && face == RIGHT { face = LEFT };
	if x_direction == 0 {
		if y_direction > 0 { face = DOWN };
		if y_direction < 0 { face = UP };
	}
	sprite_index = sprite[face];

	// 移動していない場合は動きを止める
	// アニメーションの1フレームの画像に固定
	if x_direction == 0 && y_direction == 0 {
		image_index = 0;
	}
}