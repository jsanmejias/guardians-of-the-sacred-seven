//var _center_x = room_width / 2;
//var _center_y = room_height / 2;
//var _step_x, _step_y, _x_pos, _y_pos, _i, _j;

//// **Grid Formation** (5x3 grid to fit your level size)
//_step_x = 255; // Horizontal spacing
//_step_y = 240; // Vertical spacing

//for (_i = 0; _i < 5; _i++) {
//    for (_j = 0; _j < 3; _j++) {
//        _x_pos = 150 + (_i * _step_x);
//        _y_pos = 100 + (_j * _step_y);
//        instance_create_layer(_x_pos, _y_pos, "Instances", obj_obstacle_2);
//    }
//}




// Get playable zone bounds
var _x_min = global.playable_zone_top_left[0];
var _x_max = global.playable_zone_top_right[0];
var _y_min = global.playable_zone_top_left[1];
var _y_max = global.playable_zone_bottom_left[1];

// Define the number of obstacles across and down
var _cols = 4; // Horizontal count
var _rows = 2; // Vertical count

// Calculate spacing based on playable area
var _step_x = (_x_max - _x_min) / (_cols);
var _step_y = (_y_max - _y_min) / (_rows);

// Place obstacles within the grid inside the playable zone
for (var _i = 0; _i < _cols; _i++) {
    for (var _j = 0; _j < _rows; _j++) {
        var _x_pos = _x_min + 90 + (_i * _step_x);
        var _y_pos = _y_min + 60 + (_j * _step_y);
        instance_create_layer(_x_pos, _y_pos, "Instances", obj_obstacle_2);
    }
}



