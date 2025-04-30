if (draw_gui)
{
	draw_gui = false;
	event_perform(ev_draw, ev_draw_normal);
	draw_gui = true;
}