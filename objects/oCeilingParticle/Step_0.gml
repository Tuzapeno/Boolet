/// @description 

z_vsp += z_grav;
z_vsp = clamp(z_vsp, -z_max_vsp, z_max_vsp);
		
z += z_vsp;
		
if z >= y {
	z = y;
	instance_destroy();
}	





















