if (visible) {
    // Draw the popup background
    draw_set_color(c_black);
	draw_rectangle(x - 120, y - 60, x + 580,y + 80, false); // Adjusted rectangle size

    // Draw the message
    draw_set_color(c_white);
	draw_text(x - 90, y - 40, message);
}


