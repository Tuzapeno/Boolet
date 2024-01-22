/// @description Insert description here
// You can write your code in this editor

// Alive entities are entities that are subject to buffs & debuffs

// Each entity will have an array of buffs and debuffs
// every tick, denominated by each condition, the condition will apply itself again
// for the N times it needs to.

// example: buff[0](argument)

// tick of 60 -> 1 Second in 60fps


// set up the conditions enumerator
enum CONDITION {
	EFFECT,			// The effect it causes
	TICKRATE,		// Frequency in Frames
	DURATION,		// How many times
	ELAPSED_TIME,	// Elapsed time in Frames
	POST_EFFECT		// Effect that happens after the duration expiration
}

// array for our effects
conditions = []

// iterate through every condition and apply it to the Entity
/*
	for every condition
		if elapsed_time % tickrate == 0
			apply_effect
			elapsed_time = 0
			duration--;
		else
			elapsed_time++
		
		if duration <= 0
			post_effect
			remove condition

*/








