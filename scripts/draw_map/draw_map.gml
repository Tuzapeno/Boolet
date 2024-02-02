function draw_map(){
	var tile_map = layer_tilemap_get_id("tilemap")

	

	for( var _x = 0; _x < global.map_width_t; _x++ ) {
		for( var _y = 0; _y < global.map_height_t; _y++ ) {
			if ( global.map_grid[# _x, _y] == WALL ) {
				set_tile_sprite(_x, _y);
			}
			if ( global.map_grid[# _x, _y] == EMPTY ) {
				tilemap_set(tile_map, 17, _x, _y)
			}
		}
	
	}
	
	if surface_exists(oRoomCreator.shadow_surface_map) {
		surface_free(oRoomCreator.shadow_surface_map);
	}
	
}

function set_tile_sprite(_x, _y) {
	if global.map_grid[# _x, _y] != WALL return;
		
	var tile_map = layer_tilemap_get_id("tilemap")
	
	var bitN = 1, bitW = 2, bitE = 4, bitS = 8
	
	var north = global.map_grid[# _x, _y-1] == WALL
	var west = global.map_grid[# _x-1, _y] == WALL
	var east = global.map_grid[# _x+1, _y] == WALL
	var south = global.map_grid[# _x, _y+1] == WALL
			
	var t_index = north * bitN + west * bitW + east * bitE + south * bitS + 1
	tilemap_set(tile_map, t_index, _x, _y)
}

function set_tile_around(_x, _y) {
	var tile_map = layer_tilemap_get_id("tilemap")
	tilemap_set(tile_map, 17, _x, _y)
	set_tile_sprite(_x+1, _y);
	set_tile_sprite(_x, _y+1);
	set_tile_sprite(_x+1, _y+1);
	set_tile_sprite(_x-1, _y);
	set_tile_sprite(_x, _y-1);
	set_tile_sprite(_x-1, _y-1);
	set_tile_sprite(_x-1, _y+1);
	set_tile_sprite(_x+1, _y-1);
}