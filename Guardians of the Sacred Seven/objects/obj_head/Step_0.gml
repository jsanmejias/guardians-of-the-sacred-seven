move_timer --;

if (instance_exists(obj_popup) && obj_popup.paused) {
    return; // Skip this object's logic if the game is paused
}

if(keyboard_check(ord("W")) && image_angle != 180){
	movement_direction = "up"
}

if(keyboard_check(ord("S")) && image_angle != 0){
	movement_direction = "down"
}

if(keyboard_check(ord("A")) && image_angle != 270){
	movement_direction = "left"
}

if(keyboard_check(ord("D")) && image_angle != 90){
	movement_direction = "right"
}

var _previous_head_x = x;

var _previous_head_y = y;

if(move_timer <= 0){
	if(movement_direction = "up"){
		y -= 32;
		image_angle = 0;
	}
	
	if(movement_direction = "down"){
		y += 32;
		image_angle = 180;
	}
	
	if(movement_direction = "left"){
		x -= 32;
		image_angle = 90;
	}
	
	if(movement_direction = "right"){
		x += 32;
		image_angle = 270;
	}
	
	for(i = 1; i < start_body_parts + points; i += 1){
		
		var _previous_x = body_part[i].x;
		var _previous_y = body_part[i].y;
		
		body_part[i].x = _previous_head_x;
		body_part[i].y = _previous_head_y;
		
		_previous_head_x = _previous_x;
		_previous_head_y = _previous_y;				
	
	}
	
	move_timer = move_speed * game_get_speed(gamespeed_fps);
	
}

