function init_game_variables(){

//sound_id for audio playing
global.snd_id = noone;
	
//playing state
enum GameState {
    PlayStarted,
    PlayResumed
}

global.gameState = noone;

	
// Set global variables for the playable zone boundaries
//global.playable_zone_top_left = [256, 160];
//global.playable_zone_bottom_left = [256, 608];
//global.playable_zone_top_right = [1088, 160];
//global.playable_zone_bottom_right = [1088, 608];



global.playable_zone_top_left = [224, 112];
global.playable_zone_bottom_left = [224, 661];
global.playable_zone_top_right = [1120, 112];
global.playable_zone_bottom_right = [1120, 661];




// You can also calculate width/height of the playable zone if needed
global.playable_zone_width = global.playable_zone_top_right[0] - global.playable_zone_top_left[0];
global.playable_zone_height = global.playable_zone_bottom_left[1] - global.playable_zone_top_left[1];

//Setting global counter
global.counter = 45

}