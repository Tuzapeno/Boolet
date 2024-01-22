// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


// Levels up (or down) a bullet object
function update_bullet_stats(_bullet_struct, _player_level) {	
	with _bullet_struct {
		stats.damage = stats.base_damage * bullet_progression(level) * level_progression(_player_level)
		stats.damage_bonus = stats.base_damage_bonus * bullet_progression(level) * level_progression(_player_level)
	}
}

// Levels up (or down) player stats
function update_player_stats(_player_level) {
		
	// Initialise the sum of modifiers
	var bullet_modifiers = 1;
	
	// Go through every bullet damage modifier
	with oBulletInventory {
		for (var i = 0; i < ds_list_size(inventory); ++i) {
			update_bullet_stats(inventory[|i].bullet_info, global.player_level)
			bullet_modifiers += inventory[|i].bullet_info.stats.damage_bonus
		}
	}
	
	// Update weapon real damage
	with oCurrentWeapon {
		real_damage = (weapon.damage + (weapon.damage * bullet_modifiers)) * level_progression(_player_level)
	}
}


function level_progression(_level) {
	return power((1 + _level), 0.5)
}

function bullet_progression(_level) {
	return power((0.8 + _level), 0.3)	
}

function enemy_level_progression(_level) {
	return power((0.8 + _level), 0.6)	
}