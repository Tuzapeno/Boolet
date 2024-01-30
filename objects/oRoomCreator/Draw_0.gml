/// @description Insert description here
// You can write your code in this editor

if ( !surface_exists(shadow_surface_map) ) {
	shadow_surface_map = surface_create(room_width, room_height)
	surface_set_target(shadow_surface_map)
	
	draw_clear_alpha(c_black, 0)
	
	for( var _ii = 0; _ii < global.map_width_t; _ii++ ) {
		for( var _jj = 0; _jj < global.map_height_t; _jj++ ) {
			if( global.map_grid[# _ii, _jj] == EMPTY && global.map_grid[# _ii, _jj-1] == WALL ) {
				draw_sprite_ext(sShadowMap, 0, _ii * TILESIZE, _jj * TILESIZE, 1, 1, 0, c_white, 0.50)
			}
		}
	}
	
	surface_reset_target()
}	
	
draw_surface(shadow_surface_map, 0, 0)

// dynamic
if ( !surface_exists(shadow_surface) ) { shadow_surface = surface_create(room_width, room_height) }

surface_set_target(shadow_surface)
draw_clear_alpha(c_black, 0)

surface_reset_target()
draw_surface(shadow_surface, 0, 0)
