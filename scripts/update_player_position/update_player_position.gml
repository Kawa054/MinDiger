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
		if place_meeting(x + xspd, y, obj_dgblock) ||  place_meeting(x, y + yspd, obj_dgblock){
			room_goto(rm_dangeon);
		}
	}
	
	//ダンジョン内の場合
	if(room == rm_dangeon){
		//BB (掘る場合とそうでない場合でバグが発生するため統一)
		var _left = -40;
		var _top = 20;
		var _right = 40;
		var _bottom = 64;
		px = (obj_player.x + 64) /128;
		py = (obj_player.y + 64) /128;
		
		if(x_direction < 0){
			if(is_wall_at(x + 64 + _left + xspd, y + 64 + _top) || is_wall_at(x + 64 + _left + xspd, y + 64 + _bottom)){
				//while(is_wall_at(x + 64 + _left + x_direction, y + 64 + _top) || is_wall_at(x + 64 + _left + x_direction, y + 64 + _bottom)){
					//x += x_direction;
				//}
				xspd = 0;
			}
		}
		
		if(x_direction > 0){
			if(is_wall_at(x + 64 + _right + xspd, y + 64 + _top) || is_wall_at(x + 64 + _right + xspd, y + 64 + _bottom)){
				//while(is_wall_at(x + 64 + _right + x_direction, y + 64 + _top) || is_wall_at(x + 64 + _right + x_direction, y + 64 + _bottom)){
					//x += x_direction;
				//}
				xspd = 0;
			}
		}
		
		if(y_direction > 0){
			if(is_wall_at(x + 64 + _right, y + 64 + _bottom + yspd) || is_wall_at(x + 64 + _left, y + 64 + _bottom + yspd)){
				//while(is_wall_at(x + 64 + _right, y + 64 + _bottom + y_direction) || is_wall_at(x + 64 + _left, y + 64 + _bottom + y_direction)){
					//y += y_direction;
				//}
				yspd = 0;
			}
		}
		
		if(y_direction < 0){
			if(is_wall_at(x + 64 + _right, y + 64 + _top + yspd) || is_wall_at(x + 64 + _left, y + 64 + _top + yspd)){
				//while(is_wall_at(x + 64 + _right, y + 64 + _top + y_direction) || is_wall_at(x + 64 + _left, y + 64 + _top + y_direction)){
					//y += y_direction;
				//}
				yspd = 0;
			}
		}
		
		
		
		if is_stair(floor(px), floor(py)){
			global.player_spawn_x = 2882;
			global.player_spawn_y = 5792;
			room_goto(rm_game);
		}
	}
	
	//位置を更新する
	x += xspd;
	y += yspd;
}