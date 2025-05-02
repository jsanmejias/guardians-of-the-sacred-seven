window_set_cursor(cr_default);

if(visible){
	switch (global.current_room) {
		case rm_level_one:
			audio_pause_sound(snd_eagle);
            room_goto(rm_level_two);
            break;
        case rm_level_two:
			audio_pause_sound(snd_buffalo);
            room_goto(rm_level_three);
            break;
        case rm_level_three:
			audio_pause_sound(snd_bear);
            room_goto(rm_level_four);
            break;
        case rm_level_four:
			audio_pause_sound(snd_turtle);
            room_goto(rm_level_five);
            break;
        case rm_level_five:
			audio_pause_sound(snd_wolf);
            room_goto(rm_level_six);
            break;
        case rm_level_six:
			audio_pause_sound(snd_sabe);
            room_goto(rm_level_seven);
            break;
        case rm_level_seven:
			audio_pause_sound(snd_beaver);
            room_goto(rm_credits); // <- Change this to whatever your final screen is
            break;
	}
	
	global.gameState = GameState.PlayResumed;

}

