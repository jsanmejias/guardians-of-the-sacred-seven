var _token_havent_spammed = true;

while(_token_havent_spammed){
	 x = -16 + 32 * round(random_range(32, room_width - 32) / 32);
     y = -16 + 32 * round(random_range(32, room_height - 32) / 32);
    // Check for overlap with other instances
    if (!position_meeting(x, y, obj_obstacle) && 
	!(x >= 10 && x <= 210 && y >= 10 && y <= 30)) {
        // Create wall instance
        instance_create_layer(x, y, "Instances",obj_token_collectable);
		_token_havent_spammed = false;	
    }
}
