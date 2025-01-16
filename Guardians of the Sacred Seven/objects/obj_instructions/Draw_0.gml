

//draw_set_alpha(0.7);
//draw_rectangle(room_width / 2 - 250, room_height - 110, room_width / 2 + 310, room_height - 80, false);
//// Set the color for the text
//draw_set_color(c_black);

//draw_set_alpha(1); // Reset transparency
//draw_set_color(c_white);
//draw_set_font(-1); // Optional: set a specific font if desired
//draw_text(room_width / 2 - 240, room_height - 100, "Instructions: W = Up, S = Down, A = Left, D = Right");


// Draw semi-transparent background
draw_set_alpha(0.9);
draw_set_color(c_ltgray); // Dark background
draw_rectangle(room_width / 2 - 210, room_height - 80, room_width / 2 + 270, room_height - 50, false);
draw_set_alpha(1); // Reset alpha

// Draw text with bright yellow
//draw_set_color(make_color_rgb(255, 255, 0)); // Yellow text
draw_set_color(c_black);

draw_text(room_width / 2 - 200, room_height - 75, "Instructions: W = Up, S = Down, A = Left, D = Right");