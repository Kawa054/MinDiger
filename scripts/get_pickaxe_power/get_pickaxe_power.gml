function get_pickaxe_power(pid){
	switch(pid){
		case ITEM_PICKAXE_NORMAL:
			return 2;
		break;
		
		case ITEM_PICKAXE_ATTACK:
			return 5;
		break;
		
		case ITEM_PICKAXE_SPEED:
			return 1;
		break;
	}
}