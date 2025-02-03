var _bar_bounds = {x1: 10, y1: 10, x2: 210, y2: 30};

// Define a local helper function for overlap checking
var _is_overlapping_bar = function(x, y, _bar_bounds, _token_width, _token_height) {
    return (x + _token_width > _bar_bounds.x1 && x < _bar_bounds.x2 &&
            y + _token_height > _bar_bounds.y1 && y < _bar_bounds.y2);
};

// Token dimensions
var _token_width  = 32;
var _token_height = 32;

// We will keep picking random positions until we find a valid one
var _token_have_spammed = false;

while (!_token_have_spammed)
{
    // Generate random coordinates aligned to a 32-pixel grid
    x = 32 * irandom((room_width  - _token_width ) div 32);
    y = 32 * irandom((room_height - _token_height) div 32);

    // Check if the random position is within room bounds 
    if (x >= 0 && x <= room_width  - _token_width &&
        y >= 0 && y <= room_height - _token_height)
    {
        // 1) Ensure the token's bounding box does NOT collide with obstacles
        //    collision_rectangle(x1, y1, x2, y2, object, precise, notme)
        if (!collision_rectangle(x, y, x + _token_width, y + _token_height,
                                 obj_obstacle, false, false)
            &&
            // 2) Ensure it's not overlapping the bar area
            !_is_overlapping_bar(x, y, _bar_bounds, _token_width, _token_height))
        {
            // 3) If valid, create the token on "Instances" layer
            //    (If this is the token's own Create Event, you might
            //    just set its own x, y rather than making a new instance)
            instance_create_layer(x, y, "Instances", obj_token_collectable);
            

			
            // Optional: Debug message (appears in the IDE's Output window)
            show_debug_message("TOKEN CREATEEEEEED AT: (" + string(x) + ", " + string(y) + ")");
            
            _token_have_spammed = true;
        }
    }
}








