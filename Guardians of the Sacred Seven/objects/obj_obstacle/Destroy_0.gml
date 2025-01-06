//var _token_havent_spammed = true;

//while(_token_havent_spammed){
//	 x = -16 + 32 * round(random_range(32, room_width - 32) / 32);
//     y = -16 + 32 * round(random_range(32, room_height - 32) / 32);
	
	
//    // Check for overlap with other instances
//    if (!position_meeting(x, y, obj_obstacle)) {
//        // Create wall instance
		
//        var _obstacle = instance_create_layer(x, y, "Instances",obj_obstacle);
//		_obstacle.image_angle = choose(0, 90, 180, 270);
//		_obstacle.image_yscale = random_range(1.0, 2.0);
//		_token_havent_spammed = false;	
//    }
//}




//while(_token_havent_spammed){
//	 x_pos = -16 + 32 * round(random_range(32, room_width - 32) / 32);
//     y_pos = -16 + 32 * round(random_range(32, room_height - 32) / 32);
//	//instance_create_layer(x, y, "Instances", obj_obstacle);
//    // Check for overlap with other instances
//    if (!position_meeting(x, y, obj_obstacle)) {
//        // Create wall instance
		
//        var _obstacle = instance_create_layer(x_pos, y_pos, "Instances",obj_obstacle);
//		_obstacle.image_angle = choose(0, 90, 180, 270);
//		_obstacle.image_yscale = random_range(1.0, 2.0);
//		_token_havent_spammed = false;	
//    }
//}







//x = -16 + 32 * round(random_range(32, room_width-32) / 32);
//y = -16 + 32 * round(random_range(32, room_height-32) / 32);

//var _obstacle = instance_create_layer(x, y, "Instances",obj_obstacle);
//_obstacle.image_angle = choose(0, 90, 180, 270);
//_obstacle.image_yscale = random_range(1.0, 2.0);




var _token_havent_spammed = true;
var _max_attempts = 1000; // Safety limit
var _attempts = 0;

while (_token_havent_spammed && _attempts < _max_attempts) {
    //x = -16 + 32 * round(random_range(32, room_width - 32) / 32);
    //y = -16 + 32 * round(random_range(32, room_height - 32) / 32);
	x = 32 * irandom(room_width div 32 - 1);
    y = 32 * irandom(room_height div 32 - 1);
	show_debug_message("Failed to find a position after 1000 attempts.");

    // Check for overlap with other instances
    if (!position_meeting(x, y, obj_obstacle)) {
        var _obstacle = instance_create_layer(x, y, "Instances", obj_obstacle);
        //_obstacle.image_angle = choose(0, 90, 180, 270);
        //_obstacle.image_yscale = random_range(1.0, 2.0);
        _token_havent_spammed = false;
    }
    _attempts++;
}

if (_attempts == _max_attempts) {
    show_debug_message("Failed to find a position after 1000 attempts.");
}