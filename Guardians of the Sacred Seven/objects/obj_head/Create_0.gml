move_speed = 0.2;

move_timer = move_speed * game_get_speed(gamespeed_fps);

movement_direction = "up";

points = 0;

health = 0;      // Initial progress
max_progress = 100; // Maximum progress

start_body_parts = 3;

body_part[0] = obj_head;

for(i = 1; i < start_body_parts; i++){

body_part[i]= instance_create_layer(x,y+32*i,"Instances", obj_body);

}
