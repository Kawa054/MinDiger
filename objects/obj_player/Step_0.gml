//キーボード入力を受け付ける
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));
var action_key = keyboard_check(ord("E"));

// 右への移動なら1, 左への移動なら-1, 同時押しなら0として移動の方向係数を計算
var x_direction = right_key - left_key;
var y_direction = down_key - up_key;

// プレイヤーの情報を更新する
update_player_sprite(x_direction, y_direction);
update_player_position(x_direction, y_direction);

//アクションの処理
action(action_key, x_direction, y_direction);
