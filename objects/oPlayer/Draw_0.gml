/// @description Insert description here
// You can write your code in this editor



switch state {
	case PLAYER.ARRIVING:
		draw_sprite_ext(sprite_index, image_index, x, z, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		break;
		
	default:
		draw_self();
		break;
}

