// @param x_direction 
// @param y_direction

function update_player_position(argument0, argument1){
	var x_direction = argument0;
	var y_direction = argument1;
	
	// 各方向の移動値を計算
	xspd = x_direction * move_spd;
	yspd = y_direction * move_spd;

	//衝突判定
	for(var i = 0; i < array_length_1d(collide_objects); i++){
		if place_meeting(x + xspd, y, collide_objects[i]){
			//途中で止まらないよう微調整する
			while(!place_meeting(x + x_direction, y, collide_objects[i])){
				x += x_direction;
			}
			xspd = 0;
		}
		if place_meeting(x, y + yspd, collide_objects[i]){
			//途中で止まらないよう微調整する
			while(!place_meeting(x, y + y_direction, collide_objects[i])){
				y += y_direction;
			}
			yspd = 0;
		}
	}
	
	//位置を更新する
	x += xspd;
	y += yspd;
}