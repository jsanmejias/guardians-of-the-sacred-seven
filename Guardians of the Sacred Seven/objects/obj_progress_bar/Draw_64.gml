var _bar_x1 = room_width / 2 - 200;  // Left margin
var _bar_y1 = room_height - 85 ;  // Top margin
var _bar_x2 = room_width / 2 + 150;  // width of bar
var _bar_y2 = room_height - 50;  // Height of bar

draw_healthbar(_bar_x1, _bar_y1, _bar_x2, _bar_y2, health, c_black, c_green, c_green, 0, true, true);



draw_set_font(-1); // Use the default font
draw_set_color(c_white); // Set the text color to white
draw_text_transformed(room_width / 2 + 180, room_height - 90, string(floor(global.counter)), 2, 2, 0); // Scale text by 2x

