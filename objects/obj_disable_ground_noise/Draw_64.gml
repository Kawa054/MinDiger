shader_set(shd_ground_noise);

if (surface_exists(application_surface)){
    shader_set_uniform_f(unf_gc_r, GROUND_GRASS_COLOR_R);
	shader_set_uniform_f(unf_gc_g, GROUND_GRASS_COLOR_G);
	shader_set_uniform_f(unf_gc_b, GROUND_GRASS_COLOR_B);
	shader_set_uniform_f(unf_nc_r1, GRASS_UPPER1_COLOR_R/255.0);
	shader_set_uniform_f(unf_nc_g1, GRASS_UPPER1_COLOR_G/255.0);
	shader_set_uniform_f(unf_nc_b1, GRASS_UPPER1_COLOR_B/255.0);
	shader_set_uniform_f(unf_nc_r2, GRASS_UPPER2_COLOR_R/255.0);
	shader_set_uniform_f(unf_nc_g2, GRASS_UPPER2_COLOR_G/255.0);
	shader_set_uniform_f(unf_nc_b2, GRASS_UPPER2_COLOR_B/255.0);
	shader_set_uniform_f(unf, obj_player.x, obj_player.y);
	//shader_set_uniform_f(surface_get_width(application_surface), surface_get_height(application_surface));
}

draw_surface(application_surface, 0, 0);

shader_reset();