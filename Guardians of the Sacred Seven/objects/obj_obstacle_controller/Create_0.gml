var _wall_count = 7;
// Loop to create multiple walls

for (var _i = 1; _i <= _wall_count; _i++) {
     x = -16 + 32 * round(random_range(32, room_width - 32) / 32);
     y = -16 + 32 * round(random_range(32, room_height - 32) / 32);
	//instance_create_layer(x, y, "Instances", obj_obstacle);
    // Check for overlap with other instances
    if (!position_meeting(x, y, obj_token_collectable)) {
        // Create wall instance
        var _obstacle = instance_create_layer(x, y + 32 * _i, "Instances",obj_obstacle);
		_obstacle.image_angle = choose(0, 90, 180, 270);
		_obstacle.image_yscale = random_range(1.0, 5.0);
		
    } else {
        // Reduce loop counter to retry placement if overlap
        _i--;
    }
}