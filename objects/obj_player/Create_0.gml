//プレイヤー変数
xspd = 0;
yspd = 0;
move_spd = 10;

//会話などのアクション有効範囲
action_width = 10;
action_height = 10;

//衝突時にめり込みを防ぐオブジェクト一覧
collide_objects = [obj_wall, obj_npc];

//移動時スプライトの管理
sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;

face = DOWN;
