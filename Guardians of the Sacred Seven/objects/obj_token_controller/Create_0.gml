// Local bar bounds
var _bar_bounds = {x1: 10, y1: 10, x2: 210, y2: 30};

// Define local helper function for overlap checking
var _is_overlapping_bar = function(x, y, _bar_bounds, _token_width, _token_height) {
    return (x + _token_width > _bar_bounds.x1 && x < _bar_bounds.x2 &&
            y + _token_height > _bar_bounds.y1 && y < _bar_bounds.y2);
};

// Token dimensions
var _token_width = 32;
var _token_height = 32;

// Token placement logic
var _token_have_spammed = false;

while (!_token_have_spammed) {
    // Generate random coordinates aligned to a 32-pixel grid
    x = 32 * irandom((room_width - _token_width) div 32);
    y = 32 * irandom((room_height - _token_height) div 32);

    // Check if placement is valid
    if (x >= 0 && x <= room_width - _token_width &&
        y >= 0 && y <= room_height - _token_height &&
        !position_meeting(x, y, obj_obstacle) &&
        !_is_overlapping_bar(x, y, _bar_bounds, _token_width, _token_height)) {
        
        // Place the token and exit the loop
        instance_create_layer(x, y, "Instances", obj_token_collectable);
        _token_have_spammed = true;
    }
}









