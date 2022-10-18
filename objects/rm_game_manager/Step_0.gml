room_timer++;

if(global.is_in_house){
	if(room_timer % 600 == 0){
		instance_create_layer(5600, random_range(100, 3000), layer_get_id("layer_shadow_upper"), obj_cloud);
	}
}