// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_around(m, n, thickness = 1, tile = true){
	
	if tile {
		ds_grid_set_region(global.map_grid, m-thickness, n-thickness, m+thickness, n+thickness, EMPTY);
	}
	else {
		ds_grid_set_region(global.map_grid, (m/TILESIZE)-thickness, (n/TILESIZE)-thickness,
		(m/TILESIZE)+thickness, (n/TILESIZE)+thickness, EMPTY);
	}
	
	
}