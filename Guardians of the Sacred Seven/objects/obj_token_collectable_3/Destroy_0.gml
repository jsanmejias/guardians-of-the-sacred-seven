// Token dimensions
var _token_width  = 32;
var _token_height = 32;

// Playable zone bounds
var _x_min = global.playable_zone_top_left[0];
var _x_max = global.playable_zone_top_right[0];
var _y_min = global.playable_zone_top_left[1];
var _y_max = global.playable_zone_bottom_left[1];

// We want to spawn a new token after one is destroyed
var _token_have_spammed = false;
var _px, _py;

while (!_token_have_spammed) {
    
    // Random position inside playable area, aligned to 32-pixel grid
    _px = 32 * irandom((_x_max - _x_min - _token_width) div 32) + _x_min;
    _py = 32 * irandom((_y_max - _y_min - _token_height) div 32) + _y_min;

    // Check bounding-box collision with obstacle objects
    if (!collision_rectangle(_px, _py, _px + _token_width, _py + _token_height,
                             obj_obstacle, false, false)
        &&
        !collision_rectangle(_px, _py, _px + _token_width, _py + _token_height,
                             obj_obstacle_1, false, false))
    {
        // Create the token
        var _new_token = instance_create_layer(_px, _py, "Instances", obj_token_collectable);

        // Show a debug message to confirm the coordinates
        show_debug_message("TOKEN CREATED AT: (" + string(_px) + ", " + string(_py) + ")");

        _token_have_spammed = true;
    }
}


