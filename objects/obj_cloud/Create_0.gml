cloud_x_speed = random_range(1, 3);

x = 5600;
y = random_range(100, 3000);
depth = -(y + 1000);

cloud_sprites = [spr_cloud1, spr_cloud2, spr_cloud3];
sprite_index = cloud_sprites[irandom_range(0, array_length(cloud_sprites) - 1)];