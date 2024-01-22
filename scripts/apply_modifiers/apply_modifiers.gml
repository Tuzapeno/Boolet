///@desc this script aims to apply every modifier to a base value
/// following the rule that all the modifiers are summed, applied to base and summed again
/// to base.
///@arg1 _base_value base value to change
///@arg2 _modifiers array of modifiers to apply
function apply_modifiers(){
	
	var mod_lenght = array_length(argument1);
	
	// if there are no modifiers return the base value
	if mod_lenght <= 0 return argument0
	
	var total_sum = 0
	
	for (var i = 0; i < mod_lenght; ++i) {
		total_sum += argument1[i]
	}
	
	return argument0 + (argument0 * total_sum)
}

