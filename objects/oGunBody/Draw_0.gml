

#region Draw Body

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)

#endregion

#region Draw Scope

var scopex = x + lengthdir_x(sprite_get_yoffset(sprite_index), image_angle); 
var scopey = y + lengthdir_y(sprite_get_yoffset(sprite_index), image_angle);


draw_sprite_ext(sight.sprite_index, 
                sight.image_index,  
                scopex,              
                scopey,              
                image_xscale,        
                image_yscale,        
                image_angle,         
                c_white,             
                1);          
				
#endregion

#region Draw Stock

var stockx = x + lengthdir_x(sprite_get_xoffset(sprite_index), image_angle-180); 
var stocky = y + lengthdir_y(sprite_get_xoffset(sprite_index), image_angle-180); 

draw_sprite_ext(stock.sprite_index, 
                stock.image_index,  
                stockx,              
                stocky,              
                image_xscale,        
                image_yscale,        
                image_angle,         
                c_white,             
                1);    

#endregion

#region Draw Foregrip

var dist = sprite_get_width(sprite_index) / 2

var fgripx = x + lengthdir_x(dist, image_angle); 
var fgripy = y + lengthdir_y(dist, image_angle); 

draw_sprite_ext(foregrip.sprite_index, 
                foregrip.image_index,  
                fgripx,              
                fgripy,              
                image_xscale,        
                image_yscale,        
                image_angle,         
                c_white,             
                1);    

#endregion

#region Draw Laser

if ( laser.sprite_index != sNone ) {
	
	var xscale = oCamera.cam_width / sprite_get_width(sWhiteLaser)

	var laserx = x + lengthdir_x(sprite_get_xoffset(sprite_index)/2, image_angle)
	var lasery = y + lengthdir_y(sprite_get_xoffset(sprite_index)/2, image_angle)

	// Draw laser attachment
	draw_sprite_ext(laser.sprite_index,
					0,
					laserx, 
					lasery, 
					image_xscale, 
					image_yscale, 
					image_angle,
					c_white,
					1)
	
	
	// Draw the beam
	draw_sprite_ext(sWhiteLaser,
					0,
					laserx, 
					lasery, 
					xscale, 
					image_yscale, 
					image_angle,
					laser.current_color,
					1)
}

#endregion