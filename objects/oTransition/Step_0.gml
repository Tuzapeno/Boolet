/// @description Insert description here
// You can write your code in this editor

switch ( state ) {
	case TRANSITION.IN:
		if sub_image_index < imax + xmax {
			sub_image_index += sub_image_index_inc	
		}
		else {
			if room_exists(target_room)	{
				room_goto(target_room)
				state = TRANSITION.OUT
			}
		}
		break
	
	case TRANSITION.OUT:
		if sub_image_index > 0 {
			sub_image_index -= sub_image_index_inc	
		}
		else {
			instance_destroy()	
		}
		break
}







