// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_outline_shader(){
	shader_set(shOutline);

	// grab stuff, pointers
	var texture = sprite_get_texture(sprite_index, image_index);
	var texture_Width  = texture_get_texel_width(texture);
	var texture_Height = texture_get_texel_height(texture);

	var uniForm_Handle = shader_get_uniform(shOutline, "texture_Pixel");

	// put stuff in -> vec2 2 values
	shader_set_uniform_f(uniForm_Handle, texture_Width, texture_Height );

	draw_self();

	shader_reset();
}