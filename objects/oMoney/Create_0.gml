/// @description 



// Inherit the parent event
event_inherited();

function material_add() {
	if instance_exists(oPlayer)	{
		oPlayer.money++;			
	}
}