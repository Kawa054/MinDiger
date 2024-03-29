if(instance_exists(obj_free_dgdata)){
	var dg_data = get_dangeon_info(free_dangeon_id);
	
	var _dg_id = dg_data[0];
	var _dg_type = dg_data[1];
	var _title = dg_data[2];
	var _difficult = dg_data[3];
	var _stairs = dg_data[4];
	var _hasCleared = dg_data[5];
	var _text = dg_data[6];
	var _enemy_img = dg_data[7];
	
	obj_free_dgdata.dgid = _dg_id;
	obj_free_dgdata.type = _dg_type;
	obj_free_dgdata.title = _title;
	obj_free_dgdata.difficult = _difficult;
	obj_free_dgdata.stairs = _stairs;
	obj_free_dgdata.hasCleared = _hasCleared;
	obj_free_dgdata.texts = _text;
	obj_free_dgdata.enemy_img = _enemy_img;
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	switch(_dg_type){
		case DANGEON_TYPE_PLAIN:
			layer_background_sprite(back_id, spr_background_dg1);
		break;
		
		case DANGEON_TYPE_DESERT:
			layer_background_sprite(back_id, spr_background_dg2);
		break;
		
		case DANGEON_TYPE_ICE:
			layer_background_sprite(back_id, spr_background_dg3);
		break;
		
		case DANGEON_TYPE_VOLCANO:
			layer_background_sprite(back_id, spr_background_dg4);
		break;
	}
}