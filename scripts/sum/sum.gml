// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sum(){
	var total = 0;
	
	for (var i = 0; i < argument_count; ++i) {
	    total += argument[i];
	}
	
	return total;
}