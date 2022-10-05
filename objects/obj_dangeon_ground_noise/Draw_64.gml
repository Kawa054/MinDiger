shader_set(shd_ground_noise);

if (surface_exists(application_surface)){
    shader_set_uniform_f(unf_gc_r, DANGEON_GROUND_COLOR_R);
	shader_set_uniform_f(unf_gc_g, DANGEON_GROUND_COLOR_G);
	shader_set_uniform_f(unf_gc_b, DANGEON_GROUND_COLOR_B);
	shader_set_uniform_f(unf_nc_r1, DANGEON_GROUND_NOISE1_COLOR_R/255.0);
	shader_set_uniform_f(unf_nc_g1, DANGEON_GROUND_NOISE1_COLOR_G/255.0);
	shader_set_uniform_f(unf_nc_b1, DANGEON_GROUND_NOISE1_COLOR_B/255.0);
	shader_set_uniform_f(unf_nc_r2, DANGEON_GROUND_NOISE2_COLOR_R/255.0);
	shader_set_uniform_f(unf_nc_g2, DANGEON_GROUND_NOISE2_COLOR_G/255.0);
	shader_set_uniform_f(unf_nc_b2, DANGEON_GROUND_NOISE2_COLOR_B/255.0);
	shader_set_uniform_f(ns, 0.50);
	shader_set_uniform_f(unf, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
	//shader_set_uniform_f(surface_get_width(application_surface), surface_get_height(application_surface));
}

draw_surface(application_surface, 0, 0);

shader_reset();