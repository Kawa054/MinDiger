function get_pickaxe_diglevel(pid){
	switch(pid){
		case ITEM_PICKAXE_NORMAL:
			return 1;
		break;
		
		case ITEM_PICKAXE_ATTACK:
			return 1;
		break;
		
		case ITEM_PICKAXE_SPEED:
			return 2;
		break;
	}
}