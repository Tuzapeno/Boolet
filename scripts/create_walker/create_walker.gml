// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_walker(_wx, _wy, _x2, _x3) constructor {
	wx = _wx
	wy = _wy
	walk_direction = choose(0, 90, -90, 180)
	x2_chance = _x2
	x3_chance = _x3
	
	walk = function() {
		walk_direction %= 360
		
		wx += lengthdir_x(1, walk_direction)
		wy += lengthdir_y(1, walk_direction)
	
		// Keep the walker inside map boundaries
		wx = clamp(wx, 4, global.map_width_t-4)
		wy = clamp(wy, 4, global.map_height_t-4)
		
		// Make a 2x2 room
		if (chance(x2_chance)) {
			global.filled_tiles += create_2x2_room(wx, wy)
		}
		// Make a 3x3 room
		else if (chance(x3_chance)) {
			global.filled_tiles += create_3x3_room(wx, wy)
		}
		else {
			global.filled_tiles += global.map_grid[# wx, wy]
			global.map_grid[# wx, wy] = EMPTY
		}
		
		
		
		
	}
}