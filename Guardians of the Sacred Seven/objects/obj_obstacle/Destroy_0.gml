var _token_havent_spammed = true;
var _max_attempts = 1000; // Safety limit
var _attempts = 0;

while (_token_havent_spammed && _attempts < _max_attempts) {
	
	x = 32 * irandom(room_width div 32 - 1);
    y = 32 * irandom(room_height div 32 - 1);
	
    // Check for overlap with other instances
    if (!position_meeting(x, y, obj_obstacle)) {
        var _obstacle = instance_create_layer(x, y, "Instances", obj_obstacle);
        _obstacle.image_angle = choose(0, 90, 180, 270);
        _obstacle.image_yscale = random_range(1.0, 2.0);
        _token_havent_spammed = false;
    }
    _attempts++;
}

if (_attempts == _max_attempts) {
    show_debug_message("Failed to find a position after 1000 attempts.");
}