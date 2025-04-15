// Token dimensions
var _token_width  = 32;
var _token_height = 32;

// Playable zone bounds
var _x_min = global.playable_zone_top_left[0];
var _x_max = global.playable_zone_top_right[0];
var _y_min = global.playable_zone_top_left[1];
var _y_max = global.playable_zone_bottom_left[1];

// We will keep picking random positions until we find a valid one
var _token_have_spammed = false;

while (!_token_have_spammed)
{
    // Generate random coordinates aligned to a 32-pixel grid within the playable zone
    x = 32 * irandom((_x_max - _x_min - _token_width) div 32) + _x_min;
    y = 32 * irandom((_y_max - _y_min - _token_height) div 32) + _y_min;

    // Ensure the token's bounding box does NOT collide with either obstacle
    if (!collision_rectangle(x, y, x + _token_width, y + _token_height,
                             obj_obstacle_6, false, false)
        &&
        !collision_rectangle(x, y, x + _token_width, y + _token_height,
                             obj_obstacle_7, false, false))
    {
        // Create the token on the "Instances" layer
        instance_create_layer(x, y, "Instances", obj_token_collectable_4);

        // Debug message to verify placement
        show_debug_message("TOKEN CREATED AT: (" + string(x) + ", " + string(y) + ")");

        _token_have_spammed = true;
    }
}








