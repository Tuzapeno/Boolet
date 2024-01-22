// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_money(_amount){
	for( var i = 0; i < _amount; i++ ) {
		instance_create_depth(x, y, depth, oMoney)	
	}
}