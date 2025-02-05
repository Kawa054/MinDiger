function dg_create_wall2(){
	var part_width = (dangeon_end_x - dangeon_start_x)/5;
	var part_height = (dangeon_end_y - dangeon_start_y)/5;
	for(var i = 2; i < 5; i++){
		for(var j = 1; j < 5; j++){
			randomize();
			dg_create_big_tiles(part_width*i + part_width/2 + irandom_range(-part_width/3 , part_width/3), part_height*j + part_height/2 + irandom_range(-part_height/3, part_height/3), 82);
			randomize();
			dg_create_big_tiles(part_width*i + part_width/2 + irandom_range(-part_width/3 , part_width/3), part_height*j + part_height/2 + irandom_range(-part_height/3, part_height/3), 82);
			randomize();
			pt_x = part_width*i  + part_width/2  + irandom_range(-part_width/3 , part_width/3);
			randomize();
			pt_y = part_height*j + part_height/2 + irandom_range(-part_height/3, part_height/3);
			dg_create_big_tiles(pt_x, pt_y, 82);
		}
	}
}