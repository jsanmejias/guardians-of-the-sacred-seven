instance_create_depth(0.5*room_width, obj_quit_button.y + 70, depth, obj_back_button);
var _height = obj_quit_button.y - 30;

repeat(7)
{
	instance_create_depth(0.5*room_width, _height, depth, obj_choose_level_button);
	_height -= 90;
}


instance_deactivate_object(obj_menu_logo);
instance_deactivate_object(obj_play_button);
instance_deactivate_object(obj_level_selector_button);
instance_deactivate_object(obj_quit_button);
instance_deactivate_object(obj_instructions);