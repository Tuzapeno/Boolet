// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_level_progression() {
	return power((1 + global.player_level), 0.5)
}

function enemy_level_progression(_level) {
	return power((0.8 + _level), 0.6)	
}