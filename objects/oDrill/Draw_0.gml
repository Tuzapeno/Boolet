/// @description 

draw_self();

switch state {
	case DRILL.OFF:
		if player_contact {
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_text(x, y - sprite_yoffset - 20, contact_text);		
		}
		break;
		
	case DRILL.MINING:
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text(x, y - sprite_yoffset - 20, string(drill_time/60));		
		break;
}



















