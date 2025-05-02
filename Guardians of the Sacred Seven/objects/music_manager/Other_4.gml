/// play the correct music

if room == rm_menu
|| room == rm_credits
{
	audio_stop_sound(snd_timer_tick);
	set_song_ingame( msc_main4, 10, 10 );
}


if (room == rm_level_one
|| room == rm_level_two 
|| room == rm_level_three
|| room == rm_level_four
|| room == rm_level_five
|| room == rm_level_six
|| room == rm_level_seven) && global.gameState == GameState.PlayStarted
{
	set_song_ingame(snd__main_song_tapwe, 10,10);	
}

if (room == rm_level_one
|| room == rm_level_two 
|| room == rm_level_three
|| room == rm_level_four
|| room == rm_level_five
|| room == rm_level_six
|| room == rm_level_seven) && global.gameState == GameState.PlayResumed
{
		audio_resume_sound(snd__main_song_tapwe);	
}



if room == rm_game_over
{
	audio_stop_sound(snd_timer_tick);
	audio_pause_all()
	audio_play_sound( snd_game_over, 10, false );
}