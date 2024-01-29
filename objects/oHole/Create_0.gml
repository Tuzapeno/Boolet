/// @description 

// Inherit the parent event
event_inherited();

contact_text = "Go deeper? (E)"

function interact() {
	var _inst = instance_create_layer(x, y, "Control", oTransition)
	_inst.target_room = room
}