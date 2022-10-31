alpha = 0;
switch(global.dangeon_type){
	case DANGEON_TYPE_PLAIN:
		alpha = 0.06;
	break;
	
	case DANGEON_TYPE_DESERT:
		alpha = 0.12;
	break;
	
	case DANGEON_TYPE_ICE:
		alpha = 0.10;
	break;
	
	case DANGEON_TYPE_VOLCANO:
		alpha = 0.10;
	break;
}