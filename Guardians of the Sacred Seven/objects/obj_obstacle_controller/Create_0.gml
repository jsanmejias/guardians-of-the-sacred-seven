var _wall_count = 9;

for (var _i = 1; _i <= _wall_count; _i++) {
    x = 32 * irandom((room_width - 32) div 32); // Random x position
    y = 32 * irandom((room_height - 100) div 32); // Random y position

    // Center-safe zone boundaries (300x300 safe zone)
    var _safe_x1 = (room_width / 2) - 150; // Left edge of safe zone
    var _safe_y1 = (room_height / 2) - 150; // Top edge of safe zone
    var _safe_x2 = (room_width / 2) + 150; // Right edge of safe zone
    var _safe_y2 = (room_height / 2) + 150; // Bottom edge of safe zone

    // Check for overlap with other instances and ensure safe zone
    if (!position_meeting(x, y, obj_token_collectable) &&
        !(x + 32 > _safe_x1 && x < _safe_x2 && y + 100 > _safe_y1 && y < _safe_y2)) {

        // Create wall instance
        var _obstacle = instance_create_layer(x, y + 32 * _i, "Instances", obj_obstacle);
        _obstacle.image_angle = choose(0, 90, 180, 270);
        _obstacle.image_yscale = random_range(1.0, 5.0);

    } else {
        // Reduce loop counter to retry placement if overlap or in safe zone
        _i--;
        show_debug_message("FAILED TO PLACE OBJECT " + string(_i));
    }
}






