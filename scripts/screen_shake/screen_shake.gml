/// @desc screen_shake(magnitude, frames)
/// @arg magnitude sets the strenght of the shake (radius in pixels)
/// @arg frames sets the length of the shake in frames (60 = 1 second at 60fps)

function screen_shake(argument0, argument1) {
	if !instance_exists(oCamera) { return; }
	if ( argument0 <= oCamera.shake_remain ) { return; }

	oCamera.shake_magnitude = argument0
	oCamera.shake_remain = argument0
	oCamera.shake_length = argument1
}