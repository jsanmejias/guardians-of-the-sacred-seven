/// play the correct music

if room == rm_menu
|| room == rm_credits
{
	set_song_ingame( song_main2, 60, 0 );
}

if room == rm_level_one
{
	set_song_ingame( song_main, 3*60 );
}