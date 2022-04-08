//キーボード入力を受け付ける
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));

// 右への移動なら1, 左への移動なら-1, 同時押しなら0として移動の方向係数を計算
var x_direction = right_key - left_key;
var y_direction = down_key - up_key;
// 各方向の移動値を計算
xspd = x_direction * move_spd;
yspd = y_direction * move_spd;

mask_index = sprite[DOWN];
if(yspd == 0){
	if xspd > 0 { face = RIGHT };
	if xspd < 0 { face = LEFT };
}

if xspd > 0 && face == LEFT { face = RIGHT };
if xspd < 0 && face == RIGHT { face = LEFT };
if xspd == 0 {
	if yspd > 0 { face = DOWN };
	if yspd < 0 { face = UP };
}
sprite_index = sprite[face];

if xspd == 0 && yspd == 0 {
	image_index = 0;
}

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

x += xspd;
y += yspd;


