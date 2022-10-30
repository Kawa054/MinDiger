function update_player_inventory(){
	inventory_num = 0;
	_hold_max = -1;
	for(var i = 0; i < 9; i++){
		if(inventory[i] > 0){
			inventory_num++;
			_hold_max = i;
		}
	}
	
	if(_hold_max == -1){
		hold_item_index = -1;
		hold_subitem_index = 0;
	}else{
		var tmp = _hold_item;
		var finish = false;
		if(tmp == inventory_num+1){
			hold_item_index = -1;
			for(var i = 0; i < 9; i++){
				if(inventory[i] != 0){
					hold_subitem_index = i;
					break;
				}
			}
		}else{
			for(var i = 0; i < 9; i++){
				if(inventory[i] > 0){
					tmp -= 1;
				}
		
				if(tmp == 0 && !finish){
					hold_item_index = i;
					finish = true;
					if(i == _hold_max){
						hold_subitem_index = -1;
						break;
					}
				}
			
				if(tmp == -1){
					hold_subitem_index = i;
					break;
				}
			}
		}
	}
}