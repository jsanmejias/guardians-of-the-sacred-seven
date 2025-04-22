move_timer--;

// Timer countdown logic
if (timer > 0) {
    global.counter -= 1 / game_get_speed(gamespeed_fps); // Subtracts time based on the frame rate
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

//Decrease the move timer by 1 each step
move_timer -= 1;

// 1) Capture key presses (but don't immediately change the real direction)
if (keyboard_check_pressed(ord("W")) && movement_direction != "down") {
    next_direction = "up";
}
else if (keyboard_check_pressed(ord("S")) && movement_direction != "up") {
    next_direction = "down";
}
else if (keyboard_check_pressed(ord("A")) && movement_direction != "right") {
    next_direction = "left";
}
else if (keyboard_check_pressed(ord("D")) && movement_direction != "left") {
    next_direction = "right";
}


// 2) Only move the snake when the timer runs out
if (move_timer <= 0) {

    // --- Update the actual movement direction using next_direction ---
    movement_direction = next_direction;

    // Store old head position for body-part-following
    var _previous_head_x = x;
    var _previous_head_y = y;

    // Move the head by 32 pixels in the chosen direction
    if (movement_direction == "up")    { y -= 32; }
    if (movement_direction == "down")  { y += 32; }
    if (movement_direction == "left")  { x -= 32; }
    if (movement_direction == "right") { x += 32; }

    // Move the body parts in a chain, from head to tail
    for (var i = 1; i < start_body_parts + points; i++) {
        var _old_x = body_part[i].x;
        var _old_y = body_part[i].y;

        // Move this body part to where the previous part was
        body_part[i].x = _previous_head_x;
        body_part[i].y = _previous_head_y;

        // Now remember this part's old position for the next segment
        _previous_head_x = _old_x;
        _previous_head_y = _old_y;
    }

    // Reset the move timer to move again after move_speed seconds
    move_timer = move_speed * game_get_speed(gamespeed_fps);
}
