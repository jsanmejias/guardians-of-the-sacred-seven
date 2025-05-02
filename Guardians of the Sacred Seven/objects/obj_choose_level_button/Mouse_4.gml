var levels = [
    rm_level_one,
    rm_level_two,
    rm_level_three,
    rm_level_four,
    rm_level_five,
    rm_level_six,
    rm_level_seven
];

if (btn_order > 0 && btn_order <= array_length(levels)) {
	global.gameState = GameState.PlayStarted;
    room_goto(levels[btn_order - 1]);
}