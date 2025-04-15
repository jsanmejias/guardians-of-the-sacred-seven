if (visible) {
    paused = true; // Pause the game when the popup is visible

    // Wait for the Enter key to end the game
    if (keyboard_check_pressed(vk_enter)) {
		//game_restart();
		room_goto(rm_level_three);
		audio_stop_sound(snd_bear)
    }
} else {
    paused = false; // Unpause when popup is not visible
}

