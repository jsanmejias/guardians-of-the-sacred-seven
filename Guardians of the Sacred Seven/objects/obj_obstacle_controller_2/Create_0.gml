var _center_x = room_width / 2;
var _center_y = room_height / 2;
var _step_x, _step_y, _x_pos, _y_pos, _i, _j;

// **Grid Formation** (5x3 grid to fit your level size)
_step_x = 255; // Horizontal spacing
_step_y = 240; // Vertical spacing

for (_i = 0; _i < 5; _i++) {
    for (_j = 0; _j < 3; _j++) {
        _x_pos = 150 + (_i * _step_x);
        _y_pos = 100 + (_j * _step_y);
        instance_create_layer(_x_pos, _y_pos, "Instances", obj_obstacle);
    }
}





