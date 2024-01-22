/// @description Insert description here
// You can write your code in this editor

if (surface_exists(debris_surface)) {
	draw_surface(debris_surface, 0, 0)
}
else {
	debris_surface = surface_create(room_width, room_height)	
}


