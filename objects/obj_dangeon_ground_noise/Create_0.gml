//シェーダのuniformの定義
//地面の色情報
unf_gc_r = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_R");
unf_gc_g = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_G");
unf_gc_b = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_B");

//ノイズの色情報
unf_nc_r1 = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_R1");
unf_nc_g1 = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_G1");
unf_nc_b1 = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_B1");
unf_nc_r2 = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_R2");
unf_nc_g2 = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_G2");
unf_nc_b2 = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_B2");

unf = shader_get_uniform(shd_ground_noise, "ppos");
ns = shader_get_uniform(shd_ground_noise, "noise_size");

application_surface_draw_enable(false); 