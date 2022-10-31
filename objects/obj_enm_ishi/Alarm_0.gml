switch(state){
	case ENEMY_STATE_IDLE:
		var r = irandom(1);
		var l = irandom(1);
		var d = irandom(1);
		var u = irandom(1);
		
		x_direction = r-l;
		y_direction = d-u;
		alarm[0] = 60;
	break;
	
	case ENEMY_STATE_CHASE:
		alarm[0] = 60;
	break;
	
	case ENEMY_STATE_ATTACK:
		alarm[0] = 60;
	break;
}