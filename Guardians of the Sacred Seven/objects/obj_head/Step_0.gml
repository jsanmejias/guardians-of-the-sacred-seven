move_timer--;

// Skip this object's logic if the game is paused
if (instance_exists(obj_popup) && obj_popup.paused) {
    return;
}

// Check for input to change movement direction
if (keyboard_check(ord("W")) && movement_direction != "down") {
    movement_direction = "up";
}

if (keyboard_check(ord("S")) && movement_direction != "up") {
    movement_direction = "down";
}

if (keyboard_check(ord("A")) && movement_direction != "right") {
    movement_direction = "left";
}

if (keyboard_check(ord("D")) && movement_direction != "left") {
    movement_direction = "right";
}

var _previous_head_x = x;
var _previous_head_y = y;

// Move the snake when the timer reaches 0
if (move_timer <= 0) {
    if (movement_direction == "up") {
        y -= 32;
    }

    if (movement_direction == "down") {
        y += 32;
    }

    if (movement_direction == "left") {
        x -= 32;
    }

    if (movement_direction == "right") {
        x += 32;
    }

    // Move the body parts
    for (var i = 1; i < start_body_parts + points; i += 1) {
        var _previous_x = body_part[i].x;
        var _previous_y = body_part[i].y;

        body_part[i].x = _previous_head_x;
        body_part[i].y = _previous_head_y;

        _previous_head_x = _previous_x;
        _previous_head_y = _previous_y;
    }

    // Reset the move timer
    move_timer = move_speed * game_get_speed(gamespeed_fps);
}