// global volume control
global.masterVolume = .5;
global.musicVolume = .5;

// info for the song we are currently playing / want to play

songInstance = noone;
songAsset = noone;
targetSongAsset = noone;
endFadeOutTime = 0; // how many frames to fade out the song currently playing
startFadeInTime = 60; // how many frames to fade in the new song
fadeIInstVol = 1; // volume of song instance

// for fading music out and stopping songs that are no longer playing
fadeOutInstances = array_create(0); // the audio instances to fade out
fadeOutInstVol = array_create(0); // the volume of each individual instance
fadeOutInstTime = array_create(0); // how fast the fadeout should happen


//audio_play_sound( song_main, 4, true );
