
// Functions

function bullet_constructor(_stats, _contact_effect, _effect, _upgrade_vals) constructor {
	stats = _stats
	contact_effect = _contact_effect
	effect = _effect
	upgrd_vals = _upgrade_vals
	
	upgrade = function() {
		stats.damage = ( stats.base_damage + (upgrd_vals.damage * global.player_level) ) * level_progression(global.player_level)
	}
	
}


// Bullets 

global.fire_bullet = 
{
	level: 1,
	stats: {
		type: TYPE_FIRE_BULLET,
		base_damage_bonus: 0.05,
		base_damage: 2,
		damage_bonus: 0.05,
		damage: 2,
		bullet_color: c_orange
	},
	effect: function(_level) {},
	upgrade_values: {
		damage: 1.5,
		damage_bonus: 0.05
	}
}

global.ice_bullet = 
{
	level: 1,
	stats: {
		type: TYPE_ICE_BULLET,
		base_damage_bonus: 0.05,
		base_damage: 2,
		damage_bonus: 0.05,
		damage: 2,
		bullet_color: c_aqua
	},
	effect: function(_level) {},
	contact_effect: function(_level){}
}
