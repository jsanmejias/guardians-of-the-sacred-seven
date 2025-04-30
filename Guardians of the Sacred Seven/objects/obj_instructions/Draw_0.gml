// Draw semi-transparent background
draw_set_font(fnt_default);
draw_set_alpha(0.9);
draw_set_color(c_ltgray); // Dark background
draw_rectangle(room_width / 2 - 200, room_height - 60, room_width / 2 + 200, room_height - 30, false);
draw_set_alpha(1); // Reset alpha


draw_set_color(c_black);
draw_text(room_width / 2, room_height - 45, "Instructions: W = Up, S = Down, A = Left, D = Right");