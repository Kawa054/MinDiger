state = ENEMY_STATE_IDLE;
xspd = 0;
yspd = 0;
x_direction = 0;
y_direction = 0;
move_spd = 4;
has_attacked = false;
enemy_health = 2;

//移動時スプライトの管理
sprite[RIGHT] = spr_enm_ishi_right;
sprite[UP]    = spr_enm_ishi_up;
sprite[LEFT]  = spr_enm_ishi_left;
sprite[DOWN]  = spr_enm_ishi_down;

attack[RIGHT] = spr_enm_ishi_right_attack;
attack[LEFT]  = spr_enm_ishi_left_attack;

face = DOWN;
alarm[0] = 60;