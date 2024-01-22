/// @description Insert description here
// You can write your code in this editor

image_speed = 0

none_laser = new create_laser(sNone, 0)
red_laser = new create_laser(sDefaultLaser, c_red)
blue_laser = new create_laser(sDefaultLaser, c_blue)
green_laser = new create_laser(sDefaultLaser, c_green)


current_index = 0
lasers = array_create(1)

lasers[0] = none_laser
lasers[1] = red_laser
lasers[2] = blue_laser
lasers[3] = green_laser

current_laser = lasers[current_index]
current_color = c_white

function change_laser(_incr) {
	current_index += _incr
	
	var size = array_length(lasers) - 1
	
	if current_index > size {
		current_index = 0	
	}
	else if current_index < 0 {
		current_index = size	
	}
	
	current_laser = lasers[current_index]	
}

function get_color() {
	return lasers[current_index].lcolor
}

function get_sprite() {
	return lasers[current_index].sprite
}