function get_pickaxe_name(pid){
	switch(pid){
		case ITEM_PICKAXE_NORMAL:
			return "ふつうのツルハシ";
		break;
		
		case ITEM_PICKAXE_ATTACK:
			return "くろのツルハシ";
		break;
		
		case ITEM_PICKAXE_SPEED:
			return "かがやくツルハシ";
		break;
	}
}