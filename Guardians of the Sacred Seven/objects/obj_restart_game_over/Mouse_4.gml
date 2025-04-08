// When the button is clicked, go to the game room
if (room_exists(global.previous_room)) {
    room_goto(global.previous_room);
} else {
    show_debug_message("ERROR: previous_room is not set!");
    // Optionally go to main menu or a fallback room
    room_goto(rm_main_menu);
}