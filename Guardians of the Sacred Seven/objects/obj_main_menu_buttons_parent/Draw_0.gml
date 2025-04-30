if(draw_gui) exit;

draw_self();
if(hover)
{
	image_alpha = 0.4;
    gpu_set_blendmode(bm_add);
    draw_self();
    gpu_set_blendmode(bm_normal);
    image_alpha = 1;
}

draw_set_font(fnt_default);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);