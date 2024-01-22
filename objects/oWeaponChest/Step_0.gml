/// @description Insert description here
// You can write your code in this editor

player_collision = place_meeting(x, y, oPlayer)

switch( state ) {
	case CHEST.CLOSED:
		image_index = 0
		image_speed = 0
		
		if (instance_exists(oPlayer)) {
			if(player_collision && keyboard_check_pressed(ord("E")))
			&& oPlayer.money >= cost{
				oPlayer.money -= cost
				state = CHEST.OPENED
			}
		}
		break
	case CHEST.OPENED:
		if (!done) {
			image_speed = 0.5
			instance_create_layer(x, y, "Instances", weapon.obj)
			done = true
		}
		break
}




