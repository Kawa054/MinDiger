function get_pickaxe_sprite(pid){
	switch(pid){
		case ITEM_PICKAXE_NORMAL:
			return icon_item_pickaxe1;
		break;
		
		case ITEM_PICKAXE_ATTACK:
			return icon_item_pickaxe2;
		break;
		
		case ITEM_PICKAXE_SPEED:
			return icon_item_pickaxe3;
		break;
	}
}