if (keyboard_check_pressed(vk_enter)) {
	audio_pause_sound(snd_buffalo);
	room_goto(rm_level_two);
}