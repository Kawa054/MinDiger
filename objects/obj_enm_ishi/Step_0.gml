switch(state){
	case ENEMY_STATE_IDLE:
		move_spd = 4;
		if(distance_to_object(obj_player) < 128*2){
			state = ENEMY_STATE_CHASE;
		}
	break;
	
	case ENEMY_STATE_CHASE:
		move_spd = 4;
		if(distance_to_object(obj_player) > 128*2){
			state = ENEMY_STATE_IDLE;
		}else{
			if(abs(obj_player.x - x) <= 160 && abs(obj_player.y - y) <= 160){
				x_direction = 0;
				y_direction = sign(obj_player.y - y);
				if(abs(obj_player.y - y) <= 30){
					state = ENEMY_STATE_ATTACK;
				}
			}else{
				state = ENEMY_STATE_IDLE;
			}
		}
	break;
	
	case ENEMY_STATE_ATTACK:
		move_spd = 4;
		if(!(abs(obj_player.x - x) <= 160 && abs(obj_player.y - y) <= 160)){
			state = ENEMY_STATE_IDLE;
		}else{
			if(abs(obj_player.x - x) <= 90){
				move_spd = 0;
				x_direction = sign(obj_player.x - x);
				if(!has_attacked){
					has_attacked = true;
					alarm[1] = 90;
				}
			}else{
				x_direction = sign(obj_player.x - x);
			}
			y_direction = 0;
		}
	break;
}

// プレイヤーの情報を更新する
depth = -bbox_top;

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

if(state == ENEMY_STATE_ATTACK){
	if(x_direction > 0)
		sprite_index = attack[RIGHT];
	else
		sprite_index = attack[LEFT];
}else{
	sprite_index = sprite[face];
}

// 移動していない場合は動きを止める
// アニメーションの1フレームの画像に固定
if (x_direction == 0 && y_direction == 0) {
	image_index = 0;
}

//BB (掘る場合とそうでない場合でバグが発生するため統一)
var _left = 19;
var _top = 68;
var _right = 107;
var _bottom = 126;
xspd = x_direction * move_spd;
yspd = y_direction * move_spd;

if(x_direction < 0){
	if(is_wall_at(x + _left + xspd, y + _top) || is_wall_at(x + _left + xspd, y + _bottom)){
		xspd = 0;
	}
}
		
if(x_direction > 0){
	if(is_wall_at(x + _right + xspd, y + _top) || is_wall_at(x + _right + xspd, y + _bottom)){
		xspd = 0;
	}
}
		
if(y_direction > 0){
	if(is_wall_at(x + _right, y + _bottom + yspd) || is_wall_at(x + _left, y + _bottom + yspd)){
		yspd = 0;
	}
}
		
if(y_direction < 0){
	if(is_wall_at(x + _right, y + _top + yspd) || is_wall_at(x + _left, y + _top + yspd)){
		yspd = 0;
	}
}
	
//位置を更新する
x += xspd;
y += yspd;