generate_dangeon();
set_dg_blackout(BLACKOUT_DG_START1);

dangeon_info = ds_grid_create(128, 128);
wall_shadow_grid = ds_grid_create(15, 15);

ds_grid_clear(dangeon_info, -1);
ds_grid_clear(wall_shadow_grid, 0);