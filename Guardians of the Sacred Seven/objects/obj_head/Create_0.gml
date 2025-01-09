move_speed = 0.2;

move_timer = move_speed * game_get_speed(gamespeed_fps);

movement_direction = "up";

points = 0;

health = 0;      // Initial progress
max_progress = 100; // Maximum progress

start_body_parts = 3;

var bar_x1 = 10; // Left margin
var bar_y1 = 10; // Top margin
var bar_x2 = 210; // Width of the bar (200 pixels here)
var bar_y2 = 30; // Height of the bar (20 pixels here)

draw_healthbar(bar_x1, bar_y1, bar_x2, bar_y2, health, c_black, c_green, c_green, 0, true, true);


body_part[0] = obj_head;

for(i = 1; i < start_body_parts; i++){

body_part[i]= instance_create_layer(x,y+32*i,"Instances", obj_body);

}
