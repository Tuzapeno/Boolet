/// @description 



switch state {
	case drill_state_standby:
		draw_sprite(sLandmark, 0, x, y);
		break;
	
	case drill_state_arriving:
		draw_sprite_ext(sprite_index, image_index, x, z, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		draw_sprite(sLandmark, 0, x, y);
		break;
		
	case drill_state_mining:
		draw_self();
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text(x, y - sprite_yoffset - 20, string(drill_time/60));		
		break;
}

