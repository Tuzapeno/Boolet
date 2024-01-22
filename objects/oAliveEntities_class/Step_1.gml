/// @description Apply all range of conditions
// You can write your code in this editor


// Apply conditions
for (var i = array_length(conditions) - 1; i > -1 ; --i) {
    var condition = conditions[i];
	var elapsed_time = condition[CONDITION.ELAPSED_TIME]
	var tick_rate = condition[CONDITION.TICKRATE]
	var duration = condition[CONDITION.DURATION]
	
	if elapsed_time % tick_rate == 0 {
		condition[CONDITION.EFFECT]();
		conditions[i][CONDITION.ELAPSED_TIME] = 0;
		conditions[i][CONDITION.DURATION]--;
	}
	else {
		conditions[i][CONDITION.ELAPSED_TIME]++;	
	}
	
	if (duration <= 0) {
		condition[CONDITION.POST_EFFECT]();
		array_delete(conditions, i, 1)	
	}
}

// Apply modifiers

max_hp = apply_modifiers(base_max_hp, max_health_modifiers)
spd = apply_modifiers(base_spd, speed_modifiers)
damage = apply_modifiers(base_damage, damage_modifiers)





