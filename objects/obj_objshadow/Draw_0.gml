if(!surface_exists(shadow_surface)){
	shadow_surface = surface_create(1824, 1026);
}

surface_set_target(shadow_surface);
draw_clear_alpha(c_black, 0);

gpu_set_fog(true, c_black, 0, 1);

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var sx = 30;
var sy = -40;
with(obj_block){
	draw_sprite_pos(sprite_index, image_index, 
					x - (sprite_width/2) - viewX - sx,
					y - viewY - sy,
					x + (sprite_width/2) - viewX - sx,
					y - viewY - sy,
					x + (sprite_width/2) - 10 - viewX,
					y - viewY,
					x - (sprite_width/2) + 10 - viewX ,
					y - viewY,
					0.9);
}
with(obj_paththrough_block){
	draw_sprite_pos(sprite_index, image_index, 
					x - (sprite_width/2) - viewX - sx,
					y - viewY - sy,
					x + (sprite_width/2) - viewX - sx,
					y - viewY - sy,
					x + (sprite_width/2) - 10 - viewX,
					y - viewY,
					x - (sprite_width/2) + 10 - viewX ,
					y - viewY,
					0.9);
}


var player_offsetY = -10;
with(obj_player){
	draw_sprite_pos(sprite_index, image_index, 
					x - viewX - sx,
					y + sprite_height + player_offsetY - viewY - sy,
					x + sprite_width - viewX - sx,
					y + sprite_height + player_offsetY - viewY - sy,
					
					x + sprite_width - 20 - viewX,
					y + sprite_height + player_offsetY - viewY,
					x - viewX + 20,
					y + sprite_height + player_offsetY - viewY,
					0.8);
}

gpu_set_fog(false, c_white, 0, 0);

surface_reset_target();

draw_set_alpha(0.3);
draw_surface(shadow_surface, viewX, viewY);
draw_set_alpha(1);