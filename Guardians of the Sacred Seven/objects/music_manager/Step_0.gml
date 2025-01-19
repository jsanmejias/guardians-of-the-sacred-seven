var _finalVolume = global.musicVolume*global.masterVolume;

// play the target song
if songAsset != targetSongAsset
{
	// tell the old song to fade out
	if audio_is_playing( songInstance )
	{
		// add our songInstance to our aray of songs to fade out
		array_push( fadeOutInstances, songInstance );
		// add the songInstances starting volume (so there's no abrupt change in volume
		array_push( fadeOutInstVol, fadeInInstVol );
		// add the fadeOutInstances fade out frames
		array_push( fadeOutInstTime, endFadeOutTime );
		
		// reset the songInstance and songAsset variables
		songInstance = noone;
		songAsset = noone;
	}
	
	// play the song if the old song has faded out
	if array_length( fadeOutInstances ) == 0
	{
		if audio_exists( targetSongAsset )
		{
			// play the song and store its instance in a variable
			songInstance = audio_play_sound( targetSongAsset, 4, true );
	
			// start the songs volume at 0
			audio_sound_gain( songInstance, 0, 0 );
			fadeInInstVol = 0;
		}
	// set the songAsset to match the targetSongAsset
		songAsset = targetSongAsset;
	}
}

// volume control
// main song volume
if audio_is_playing( songInstance )
{
	// Fade the song in
	if ( startFadeInTime > 0 )
	{
		if fadeInInstVol < 1 { fadeInInstVol += 1/startFadeInTime; } else fadeInInstVol = 1;
	}
	else
	{
		fadeInInstVol = 1;	
	}
	
	// Actually set the gain
	audio_sound_gain( songInstance, fadeInInstVol*_finalVolume, 0 )
}

// fading songs out
for ( var i = 0; i < array_length( fadeOutInstances ); i++)
{
	// fade the volume
	if fadeOutInstTime[i] > 0
	{
		if fadeOutInstVol[i] > 0 { fadeOutInstVol[i] -= 1/fadeOutInstTime[i]; };
	}
	// immediately cut volume to 0 otherwise
	else 
	{
		fadeOutInstVol[i] = 0;
	}
	// actually set the gain
	audio_sound_gain( fadeOutInstances[i], fadeOutInstVol[i]*_finalVolume, 0);
	
	// stop the song when its volume is at 0 and remove it from ALL arrays
	if fadeOutInstVol[i] <= 0
	{
		// stop the song
		if audio_is_playing( fadeOutInstances[i] ) {audio_stop_sound( fadeOutInstances[i] ); };
		// remove it from the arrays
		array_delete( fadeOutInstances, i, 1);
		array_delete( fadeOutInstVol, i, 1);
		array_delete( fadeOutInstTime, i, 1);
		// set the loop back since we just deleted an entry
		i--;
	}
}





