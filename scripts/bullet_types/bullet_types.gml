
// Functions

function SpecialBullet(_stats, _contact_effect, _effect, _level_up_values) constructor {
	stats = _stats
	contact_effect = _contact_effect
	effect = _effect
	level_up_values = _level_up_values
}


// Bullets 

global.fire_bullet = 
{
	level: 1,					// Bullet level aka the number of bullets hold in the inventory
	type: TYPE_FIRE_BULLET,		// Type of bullet (id)
	base_damage_bonus: 0.05,	// Base value for the extra bonus to gun's damage
	base_damage: 2,				// Base value for the bullet's damage
	damage_bonus: 0.5,			// Real value for bonus applied to gun's damage
	damage: 2,					// Real bullet damage
	bullet_color: c_orange,		// Bullet color
	effect: function(level) {}, // Function that triggers effects that the bullet causes on the enviroment
	contact_effect: function(level) {}, // Function that triggers on-enemy-contact effects
	level_up_modifier: 2		// The multiplicative value to upgrade weapon base damage and damage_bonus
}

global.ice_bullet = 
{
	level: 1,
	type: TYPE_ICE_BULLET,
	base_damage_bonus: 0.05,
	base_damage: 1,
	damage_bonus: 0.02,
	damage: 2,
	bullet_color: c_aqua,
	effect: function(_level) {},
	contact_effect: function(_level){},
	level_up_modifier: 2
}
