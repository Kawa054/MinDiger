//プレイヤー変数
xspd = 0;
yspd = 0;
move_spd = 10;

player_health = global.playerHealth;

//会話などのアクション有効範囲
action_width = 40;
action_height = 40;

is_action = false;
is_using_pickaxe = false;

px = 0;
py = 0;

//衝突時にめり込みを防ぐオブジェクト一覧
collide_objects = [obj_wall, obj_npc, obj_block];

//移動時スプライトの管理
sprite[RIGHT] = spr_player_right;
sprite[UP]    = spr_player_up;
sprite[LEFT]  = spr_player_left;
sprite[DOWN]  = spr_player_down;

//掘るスプライトの管理
dig[RIGHT] = spr_player_right_pickaxe;
dig[UP]    = spr_player_up_pickaxe;
dig[LEFT]  = spr_player_left_pickaxe;
dig[DOWN]  = spr_player_down_pickaxe;

face = DOWN;

pickaxe_id = global.playerPickaxeId;
inventory = global.playerInventory;
inventory_num = 0;

_hold_item = 0; //wheelで変更
_hold_max = 0;

hold_item_index = -1; //-1はピッケル
hold_subitem_index = 0;
