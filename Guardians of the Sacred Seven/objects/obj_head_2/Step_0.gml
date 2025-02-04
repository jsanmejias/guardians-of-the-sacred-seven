move_timer--;

// Check if the game is paused
if (instance_exists(obj_popup_2) && obj_popup_2.paused) {
    return; // Skip all logic, including the timer decrement
}

// Timer countdown logic
if (timer > 0) {
    timer -= 1 / game_get_speed(gamespeed_fps); // Subtracts time based on the frame rate
}

// Play the sound only once when the timer is less than 10
if (timer <= 10 && timer > 0) {
    if (!sound_playing) { // Check if the sound is not already playing
        audio_play_sound(snd_timer_tick, 10, true);
        sound_playing = true; // Set the flag to true
    }
} else {
    sound_playing = false; // Reset the flag if the timer is not in the range
}

if (timer <= 0) {
    timer = 0; // Ensure it doesn't go below 0
	audio_stop_sound(snd_timer_tick); // Stop the ticking sound
    sound_playing = false; // Reset the flag to avoid playing the sound again
    room_goto(rm_game_over); // Go to the game over room
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