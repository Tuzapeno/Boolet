/// @description Insert description here
// You can write your code in this editor

image_speed = 0

none_fgrip = new create_fgrip(sNone, 0)
small_fgrip = new create_fgrip(sSmallFGrip, 1)
triangle_fgrip = new create_fgrip(sTriangleGrip, 3)

current_index = 0
fgrips = array_create(3)

fgrips[0] = none_fgrip
fgrips[1] = small_fgrip
fgrips[2] = triangle_fgrip


current_fgrip = fgrips[0]

function change_fgrip(_incr) {
	current_index += _incr
	
	var size = array_length(fgrips) - 1
	
	if current_index > size {
		current_index = 0	
	}
	else if current_index < 0 {
		current_index = size	
	}
	
	current_fgrip = fgrips[current_index]	
}

function get_sprite() {
	return fgrips[current_index].sprite
}

function get_accuracy() {
	return fgrips[current_index].accuracy
}
