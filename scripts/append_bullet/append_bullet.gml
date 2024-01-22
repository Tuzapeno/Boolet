///@desc increase the level of a bullet or add it in the bullet inventory
///@arg bullet object
function append_bullet(bullet_obj){
	with oBulletInventory {
		// Create instance
		var boolet_instance = boolet(bullet_obj)
		var size = ds_list_size(inventory)
	
		// Don't add to a full inventory
		if size >= max_bullets { return };
	
		// If we found a similar type, increase level, if not add to list
		for (var i = 0; i < size; ++i) {
			if inventory[|i].object_index == boolet_instance.object_index {
				inventory[|i].bullet_info.level++;
				update_player_stats(global.player_level)
				return;
			}
		}
		ds_list_add(inventory, boolet_instance);
	}
}