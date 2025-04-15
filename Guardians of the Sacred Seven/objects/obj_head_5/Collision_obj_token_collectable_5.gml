//Every time we hit an obstacle this code will run

//First we add 10 to the health(progress) we need to use health as variable because GameMaker 
//takes this variable to interact with progress bar

health += 10; // Increase progress by 10

audio_play_sound( snd_coin, 10, false );

//We check if the health (progress) is equeal to the max progress
//Here the player has finished the game by reaching the max progress
if (health == max_progress) {
	audio_pause_all(); 
	audio_stop_sound(snd_timer_tick);
	room_goto(rm_level_six);
}
	


//Every time we hit a token it adds 3 body parts
for(i = 0; i < 3; i++){
	points++;
	var _new_body_x = body_part[start_body_parts + points - 2].x;
	var _new_body_y = body_part[start_body_parts + points - 2].y;
	body_part[start_body_parts + points - 1] = instance_create_layer(_new_body_x, _new_body_y, "Instances", obj_body_5);
}

//Change the speed, just when max speed has not been reached
//when we make it a lower number it actually makes it faster
if(move_speed > max_speed){
	move_speed *= 0.85;
}


//We destroy the current object, 
//this runs the destroy event of the object we are collisioning with (token)
instance_destroy(other);


