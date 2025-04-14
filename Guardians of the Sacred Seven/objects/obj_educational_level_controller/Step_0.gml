if (keyboard_check_pressed(vk_enter)) {
	room_goto(rm_level_two);
	audio_stop_sound(snd_buffalo_reading)
}