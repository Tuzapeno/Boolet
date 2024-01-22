/// @description Insert description here
// You can write your code in this edito

//randomize()

shadow_surface_map = noone
shadow_surface = noone

global.map_width_t = room_width / TILESIZE
global.map_height_t = room_height / TILESIZE
global.map_grid = ds_grid_create(global.map_width_t, global.map_height_t)

global.filled_tiles = 0

ds_grid_clear(global.map_grid, WALL)
