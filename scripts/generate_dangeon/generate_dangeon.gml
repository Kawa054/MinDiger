function generate_dangeon(){
	var part_width = (dangeon_end_x - dangeon_start_x)/5;
	var part_height = (dangeon_end_y - dangeon_start_y)/5;
	
	var has_player_generated = false;
	var has_stair_generated = false;
	
	for(var i = 2; i < 5; i++){
		for(var j = 1; j < 5; j++){
			randomize();
			dg_create_big_room(part_width*i + part_width/2 + irandom_range(-part_width/2 , part_width/2), part_height*j + part_height/2 + irandom_range(-part_height/2, part_height/2));
			randomize();
			dg_create_big_room(part_width*i + part_width/2 + irandom_range(-part_width/2 , part_width/2), part_height*j + part_height/2 + irandom_range(-part_height/2, part_height/2));
			randomize();
			pt_x = part_width*i  + part_width/2  + irandom_range(-part_width/4 , part_width/4);
			randomize();
			pt_y = part_height*j + part_height/2 + irandom_range(-part_height/4, part_height/4);
			dg_create_big_room(pt_x, pt_y);
			
			if(!has_player_generated){
				randomize();
				if(irandom_range(-2, 2) == 0){
					has_player_generated = true;
					obj_player.x = 128*pt_x;
					obj_player.y = 128*pt_y;
				}
			}
			
			if(!has_stair_generated){
				randomize();
				if(irandom_range(-1, 1) == 0){
					has_stair_generated = true;
					create_dangeon_stair(pt_x, pt_y);
				}
			}
		}
	}
	
	if(!has_player_generated){
		has_player_generated = true;
		obj_player.x = 128*pt_x;
		obj_player.y = 128*pt_y;	
	}
	
	if(!has_stair_generated){
		has_stair_generated = true;
		create_dangeon_stair(pt_x, pt_y);
	}
}