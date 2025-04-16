//window_set_fullscreen(true);

//// Recommended example for 16:10 (MacBook standard)
//var display_width = display_get_width();
//var display_height = display_get_height();

//// Resize surface
//surface_resize(application_surface, display_width, display_height);

//// Set fullscreen
//window_set_fullscreen(true);
//window_set_size(display_width, display_height);
//window_center();

//// Set camera and viewport
//camera_set_view_size(view_camera[0], display_width, display_height);
//view_wport[0] = display_width;
//view_hport[0] = display_height;



window_set_fullscreen(true);
display_set_gui_size(display_get_width(), display_get_height());