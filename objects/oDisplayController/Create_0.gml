/// @description 
zoom = 1;
ideal_width = 0;
ideal_heigth = 320;
max_zoom = 4;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_heigth*aspect_ratio);

// check for odd
if ideal_width & 1 {
	ideal_width++;	
}

max_zoom = floor(display_get_width()/ideal_heigth);

for (var i = 1; i <= room_last; ++i) {
    if room_exists(i) {
		room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_heigth);
		room_set_view_enabled(i, true);
	}
}

window_set_size(ideal_width, ideal_heigth);
window_set_fullscreen(true);
display_set_gui_size(ideal_width, ideal_heigth);
surface_resize(application_surface, ideal_width, ideal_heigth);
room_goto_next();










