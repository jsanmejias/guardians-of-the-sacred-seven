draw_sprite_ext(spr_Healthbar, 0, 552, 73, 0.52, 0.6, 0, #1d0831, 1);

draw_sprite_part_ext(
    spr_Healthbar, 0, 0, 0, healthbar_width*(health/100), healthbar_height,
		552, 73,
			healthbar_scale_x, healthbar_scale_y, image_blend, 1);