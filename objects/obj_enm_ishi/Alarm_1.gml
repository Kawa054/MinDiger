has_attacked = false;
switch(state){
	case ENEMY_STATE_ATTACK:
		instance_create_depth(obj_player.x, obj_player.y, obj_player.depth - 100, obj_effect_damage);
	break;
}