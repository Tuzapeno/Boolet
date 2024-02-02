/// @description 

var rand = irandom(array_length(enemies_list)-1);
instance_create_depth(x, y, depth, enemies_list[rand]);
instance_destroy();



















