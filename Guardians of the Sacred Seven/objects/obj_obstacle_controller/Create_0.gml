//var _center_x = room_width / 2;
//var _center_y = room_height / 2;
//var _step_x, _step_y, _x_pos, _y_pos, _i, _j;

// **Grid Formation** (5x3 grid to fit your level size)
//_step_x = 255; // Horizontal spacing
//_step_y = 240; // Vertical spacing

//for (_i = 0; _i < 5; _i++) {
//    for (_j = 0; _j < 3; _j++) {
//        _x_pos = 150 + (_i * _step_x);
//        _y_pos = 100 + (_j * _step_y);
//        instance_create_layer(_x_pos, _y_pos, "Instances", obj_obstacle);
//    }
//}

// top left corner
instance_create_layer(100, 100, "Instances", obj_obstacle);
instance_create_layer(100, 190, "Instances", obj_obstacle);
instance_create_layer(130, 100, "Instances", obj_obstacle_1);

// bottom left corner
instance_create_layer(100, 480, "Instances", obj_obstacle);
instance_create_layer(100, 570, "Instances", obj_obstacle);
instance_create_layer(130, 634, "Instances", obj_obstacle_1);

// top right corner
instance_create_layer(1210, 100, "Instances", obj_obstacle);
instance_create_layer(1210, 190, "Instances", obj_obstacle);
instance_create_layer(1120, 100, "Instances", obj_obstacle_1);

// bootom right corner
instance_create_layer(1210, 480, "Instances", obj_obstacle);
instance_create_layer(1210, 570, "Instances", obj_obstacle);
instance_create_layer(1120, 634, "Instances", obj_obstacle_1);

// top middle
instance_create_layer(625, 100, "Instances", obj_obstacle_1);
instance_create_layer(535, 100, "Instances", obj_obstacle_1);
instance_create_layer(715, 100, "Instances", obj_obstacle_1);

// middle middle
instance_create_layer(625, 375, "Instances", obj_obstacle_1);
instance_create_layer(535, 375, "Instances", obj_obstacle_1);
instance_create_layer(715, 375, "Instances", obj_obstacle_1);

// bottom middle
instance_create_layer(625, 634, "Instances", obj_obstacle_1);
instance_create_layer(535, 634, "Instances", obj_obstacle_1);
instance_create_layer(715, 634, "Instances", obj_obstacle_1);

