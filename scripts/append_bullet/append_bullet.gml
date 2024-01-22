///@desc increase the level of a bullet or add it in the bullet inventory
///@arg bullet object
function append_bullet(bullet_obj){
	with oBulletInventory {
		// Create instance
		var boolet_instance = boolet(bullet_obj)
	
		// Don't add to a full inventory
		if bullet_count >= max_bullets { return };
		// tem um ERRO AQUI
		// a lista n ta pegando direito
	
	
		// If we found a similar type, increase level, if not add to list
		for (var i = 0; i < ds_list_size(inventory); ++i) {
			if inventory[|i].object_index == boolet_instance.object_index {
				inventory[|i].bullet_info.level++;
				bullet_count++;
				update_player_stats();
				return;
			}
		}
		ds_list_add(inventory, boolet_instance);
		update_player_stats();
		bullet_count++;
	}
}