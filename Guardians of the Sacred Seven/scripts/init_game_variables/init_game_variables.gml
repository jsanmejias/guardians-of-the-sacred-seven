function init_game_variables(){
	
// Set global variables for the playable zone boundaries
global.playable_zone_top_left = [256, 160];
global.playable_zone_bottom_left = [256, 608];
global.playable_zone_top_right = [1088, 160];
global.playable_zone_bottom_right = [1088, 608];

// You can also calculate width/height of the playable zone if needed
global.playable_zone_width = global.playable_zone_top_right[0] - global.playable_zone_top_left[0];
global.playable_zone_height = global.playable_zone_bottom_left[1] - global.playable_zone_top_left[1];

//Setting global counter
global.counter = 45

}