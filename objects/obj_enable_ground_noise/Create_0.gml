//シェーダのuniformの定義
//地面の色情報
unf_gc_r = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_R");
unf_gc_g = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_G");
unf_gc_b = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_B");

//ノイズの色情報
unf_nc_r = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_R");
unf_nc_g = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_G");
unf_nc_b = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_B");

layer_shader(layer_get_id("layer_ground"), shd_ground_noise);
shader_set_uniform_f(unf_gc_r, GROUND_GRASS_COLOR_R);
shader_set_uniform_f(unf_gc_g, GROUND_GRASS_COLOR_G);
shader_set_uniform_f(unf_gc_b, GROUND_GRASS_COLOR_B);
shader_set_uniform_f(unf_nc_r, GRASS_UPPER1_COLOR_R/255.0);
shader_set_uniform_f(unf_nc_g, GRASS_UPPER1_COLOR_G/255.0);
shader_set_uniform_f(unf_nc_b, GRASS_UPPER1_COLOR_B/255.0);
