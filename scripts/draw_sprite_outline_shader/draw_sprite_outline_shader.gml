// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_sprite_outline_shader(_sprite, _subimage, _x, _y, _xscale, _yscale, _rot, _col, _a){
	shader_set(shOutline);

	// grab stuff, pointers
	var texture = sprite_get_texture(_sprite, _subimage);
	var texture_Width  = texture_get_texel_width(texture);
	var texture_Height = texture_get_texel_height(texture);

	var uniForm_Handle = shader_get_uniform(shOutline, "texture_Pixel");

	// put stuff in -> vec2 2 values
	shader_set_uniform_f(uniForm_Handle, texture_Width, texture_Height );

	draw_sprite_ext(_sprite, _subimage, _x, _y, _xscale, _yscale, _rot, _col, _a)

	shader_reset();
}