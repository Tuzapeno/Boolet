/// @description Insert description here
// You can write your code in this editor

// Get the center of room coordinates
var initial_x = irandom_range(4, global.map_width_t-4),
initial_y = irandom_range(4, global.map_height_t-4)


// 1. Drunkard walk
var walker_max = 5
var x2_floors_chance = -1
var x3_floors_chance = 0.75

var t90 = 0.01
var tc90 = 0.01
var t180 = 0.01

var walker_list = ds_list_create()
ds_list_add(walker_list, new create_walker(initial_x, initial_y, x2_floors_chance, x3_floors_chance))

var iterations = 10000

while(global.filled_tiles < 1500 ) {
	
	// Chance to change walkers direction
	for( var i = 0; i < ds_list_size(walker_list); i++ ) {
		// turn 90degrees
		if (chance(t90)) { walker_list[|i].walk_direction += 90 }
		// turn 90degrees counterclock
		else if (chance(tc90)) { walker_list[|i].walk_direction += -90 }
		// turn 180degrees 
		else if (chance(t180)) { 
			walker_list[|i].walk_direction += 180;
		}
	}
	
	// Move walkers
	for( var i = 0; i < ds_list_size(walker_list); i++ ) {
		walker_list[|i].walk()
	}
	
	// Chance to destroy a walker
	for( var i = ds_list_size(walker_list); i > -1 ; i-- ) {
		// more walkers better chance to destroy
		var destroy_chance = 0.2
		if (chance(destroy_chance) && ds_list_size(walker_list) > 1) {
			ds_list_delete(walker_list, i)
		}
	}
	
	// Chance to create a walker (creates at walker position)
	for( var i = 0; i < ds_list_size(walker_list); i++ ) {
		var create_chance = 0.2
		var walker = walker_list[|i]
		if (chance(create_chance) && ds_list_size(walker_list) < walker_max) {
			ds_list_add(walker_list, new create_walker(walker.wx, walker.wy, x2_floors_chance, x3_floors_chance))
		}
	}
	iterations--
}

ds_list_destroy(walker_list)



// Put player 
clear_around(initial_x, initial_y)

if (instance_exists(oPlayer)) {
	oPlayer.x = initial_x * TILESIZE
	oPlayer.y = initial_y * TILESIZE
	
}
else {
	instance_create_layer(initial_x*TILESIZE, initial_y*TILESIZE, "Instances", oPlayer)
}

if (!instance_exists(oCamera)) {
	instance_create_depth(x, y, depth, oCamera)	
}

#region add_instances

for( var _x = 0; _x < global.map_width_t; _x++ ) {
	for( var _y = 0; _y < global.map_height_t; _y++ ) {
		switch( global.map_grid[# _x, _y] ) {
			case WALL:
				instance_create_layer(_x * TILESIZE, _y * TILESIZE, "Instances", oWall)
				break;
		}
	}
}

#endregion



#region apply_tileset
var tile_map = layer_tilemap_get_id("tilemap")

var bitN = 1,
bitW = 2,
bitE = 4,
bitS = 8

for( var _x = 0; _x < global.map_width_t; _x++ ) {
	for( var _y = 0; _y < global.map_height_t; _y++ ) {
		if ( global.map_grid[# _x, _y] == WALL ) {
			var north = global.map_grid[# _x, _y-1] == WALL
			var west = global.map_grid[# _x-1, _y] == WALL
			var east = global.map_grid[# _x+1, _y] == WALL
			var south = global.map_grid[# _x, _y+1] == WALL
			
			var t_index = north * bitN + west * bitW + east * bitE + south * bitS + 1
			tilemap_set(tile_map, t_index, _x, _y)
		}
		if ( global.map_grid[# _x, _y] == EMPTY ) {
			tilemap_set(tile_map, 17, _x, _y)
		}
	}
	
}
#endregion

global.game_started = true
