// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_around(m, n){
	ds_grid_set_region(global.map_grid, m-1, n-1, m+1, n+1, EMPTY);
}