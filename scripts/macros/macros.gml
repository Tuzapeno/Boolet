// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Material types
enum MATERIAL {
	MONEY,
	ENERGY
}

enum SKILL {
	PRIMARY,
	SECONDARY,
	ABILITY1,
	ABILITY2,
	ABILITY3
}


#macro VIEW_CAMERA view_camera[0]
#macro FRAME_RATE game_get_speed(gamespeed_fps)


// Map
#macro TILESIZE 32
#macro HALFTILE 16
#macro WALL 1
#macro EMPTY 0

// Entities

	// Solids
	#macro WALL_COLLISION 0

	// Enemies
	#macro CHASER_COLLISION 1 