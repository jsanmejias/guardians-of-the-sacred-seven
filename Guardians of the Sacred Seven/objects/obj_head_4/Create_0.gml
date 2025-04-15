move_speed = 0.4;
max_speed = 0.2;
timer = 45; // Timer starts at 60 seconds
move_timer = move_speed * game_get_speed(gamespeed_fps);
movement_direction = "up";
next_direction = "up"; 
points = 0;
sound_playing = false; // Keeps track of whether the sound is playing

start_body_parts = 3;
body_part[0] = obj_head_4;
health = 80;      // Initial progress
max_progress = 100; // Maximum progress
global.current_room = room; // save the room name so that you can replay when you get game over

for(i = 1; i < start_body_parts; i++){
 
body_part[i]= instance_create_layer(x, y + 32 * i, "Instances", obj_body_4);

}


