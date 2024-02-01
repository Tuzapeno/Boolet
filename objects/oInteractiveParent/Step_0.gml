/// @description 

var x1 = x - sprite_xoffset - 5;
var y1 = y - sprite_yoffset - 5;
var x2 = x + sprite_xoffset + 5;
var y2 = y + sprite_yoffset + 5;

player_contact = collision_rectangle(x1, y1, x2, y2, oPlayerParent, false, false);

if player_contact && player_contact.interact_key {
	interact();	
}















