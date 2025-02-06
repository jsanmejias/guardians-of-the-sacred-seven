// Local bar bounds 
var _bar_bounds = {x1: 10, y1: 10, x2: 210, y2: 30};

// Define local helper function for overlap checking
var _is_overlapping_bar = function(x, y, _bar_bounds, _token_width, _token_height) {
    return (x + _token_width > _bar_bounds.x1 && x < _bar_bounds.x2 &&
            y + _token_height > _bar_bounds.y1 && y < _bar_bounds.y2);
};

// Token dimensions
var _token_width  = 32;
var _token_height = 32;

// We want to spawn a new token after one is destroyed
var _token_have_spammed = false;
var _px, _py;

while (!_token_have_spammed) {

    // Random position aligned to 32-pixel grid:
    _px = 32 * irandom((room_width  - _token_width ) div 32);
    _py = 32 * irandom((room_height - _token_height) div 32);

    // 1) Check bounding-box collision with *both* obstacle objects
    //    "false, false" => not using precise collisions, not ignoring ourselves
    if (!collision_rectangle(_px, _py, _px + _token_width, _py + _token_height,
                             obj_obstacle, false, false)
        &&
        !collision_rectangle(_px, _py, _px + _token_width, _py + _token_height,
                             obj_obstacle_1, false, false)
        &&
        // 2) Check bar overlap logic
        !_is_overlapping_bar(_px, _py, _bar_bounds, _token_width, _token_height))
    {
        // Create the token
        var _new_token = instance_create_layer(_px, _py, "Instances", obj_token_collectable);
        
        // Show a debug message to confirm the coordinates
        show_debug_message("TOKEN CREATED AT: (" + string(_px) + ", " + string(_py) + ")");

        _token_have_spammed = true;
    }
}



