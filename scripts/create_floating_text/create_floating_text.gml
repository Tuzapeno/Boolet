// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_floating_text(_text, _color){
	with instance_create_depth(x, y, depth, oFloatingText) {
		text = _text
		color = _color
	}
}