//points += 1;

//var _new_body_x = body_part[start_body_parts + points - 2].x;
//var _new_body_y = body_part[start_body_parts + points - 2].y;
//body_part[start_body_parts + points - 1] = instance_create_layer(_new_body_x, _new_body_y, "Instances", obj_body);

health += 10; // Increase progress by 10
if (health == max_progress) {
   game_restart(); // Ensure it doesn't exceed max_progress
}

for(i = 0; i < 3; i++){
	
points++;
var _new_body_x = body_part[start_body_parts + points - 2].x;
var _new_body_y = body_part[start_body_parts + points - 2].y;
body_part[start_body_parts + points - 1] = instance_create_layer(_new_body_x, _new_body_y, "Instances", obj_body);
}


move_speed *= 0.85;

instance_destroy(other);
