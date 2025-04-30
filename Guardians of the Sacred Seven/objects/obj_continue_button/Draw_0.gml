draw_self(); // Draw the button's sprite first

// Then draw the text on top
draw_set_font(fnt_default_big);
draw_set_color(c_white);
draw_text(x, y, "Continue");