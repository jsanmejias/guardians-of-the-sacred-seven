/// play the correct music

if room == rm_menu
|| room == rm_credits
{
	audio_stop_sound(snd_timer_tick);
	set_song_ingame( msc_main4, 10, 10 );
}

if room == rm_level_one
{
	set_song_ingame( msc_main3, 10, 10 );
	
}

if room == rm_level_two
{
	audio_resume_sound(msc_main3);
	//set_song_ingame( msc_main3, 10, 10 );
}

if room == rm_game_over
{
	audio_stop_sound(snd_timer_tick);
	set_song_ingame(noone);
	audio_play_sound( snd_game_over, 10, false );
}