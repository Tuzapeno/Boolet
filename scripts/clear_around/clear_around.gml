// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_around(m, n){
	global.map_grid[# m, n] = EMPTY
	global.map_grid[# m+1, n] = EMPTY
	global.map_grid[# m-1, n] = EMPTY
	global.map_grid[# m, n+1] = EMPTY
	global.map_grid[# m, n-1] = EMPTY
	global.map_grid[# m+1, n+1] = EMPTY
	global.map_grid[# m-1, n-1] = EMPTY
	global.map_grid[# m+1, n-1] = EMPTY
	global.map_grid[# m-1, n+1] = EMPTY
}