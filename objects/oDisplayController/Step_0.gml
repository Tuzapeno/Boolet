/// @description 


if keyboard_check_pressed(ord("z")) {
	if zoom > max_zoom zoom = 1;
	else zoom++;
	surface_resize(application_surface, ideal_width*zoom, ideal_heigth*zoom);
	alarm[0] = 1;
}
	


















