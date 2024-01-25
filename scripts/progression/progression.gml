// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


// Levels up (or down) a bullet object
function update_bullet_stats(_bullet_struct) {	
	with _bullet_struct {
		damage = base_damage * (level_up_modifier * global.player_level) * player_level_progression()
		damage_bonus = base_damage_bonus * (level_up_modifier * global.player_level) * player_level_progression()
	}
}

// Levels up (or down) player stats
function update_player_stats() {
		
	// Initialise the sum of modifiers
	var bullet_modifiers = 1;
	
	// Go through every bullet damage modifier
	with oBulletInventory {
		for (var i = 0; i < ds_list_size(inventory); ++i) {
			update_bullet_stats(inventory[|i])
			bullet_modifiers += inventory[|i].damage_bonus
		}
	}
	
	// Update weapon real damage
	with oWeapon {
		var base_leveled = weapon.damage * player_level_progression()
		var base_modified = base_leveled + (base_leveled * bullet_modifiers)
		
		real_damage = base_modified
	}
}


function player_level_progression() {
	return power((1 + global.player_level), 0.5)
}

function enemy_level_progression(_level) {
	return power((0.8 + _level), 0.6)	
}