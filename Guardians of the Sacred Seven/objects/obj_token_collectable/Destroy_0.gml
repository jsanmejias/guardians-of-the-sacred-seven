x = -16 + 32 * round(random_range(32, room_width-32) / 32);
y = -16 + 32 * round(random_range(32, room_height-32) / 32);

instance_create_layer(x,y,"Instances",obj_token_collectable);