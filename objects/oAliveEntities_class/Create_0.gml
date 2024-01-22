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



// modifiers will alter values (increase or decrease)
// effects will activate special scenarios like temporary god mode, 1 damage shield...


// list of modifiers

	// Entity
	max_health_modifiers = []
	speed_modifiers = []
	
	// Weapon
	accuracy_modifiers = []
	damage_modifiers = []
	firerate_modifiers = []
	bullet_range_modifiers = []


// list of Entity variables

	// Base values
	base_max_hp = 0
	base_spd = 0
	base_damage = 0
	
	// Values
	max_hp = 0
	current_hp = 0
	spd = 0











