///@desc increase the level of a bullet or add it in the bullet inventory
///@arg bullet object
function append_bullet(_bullet_struct){
	with oBulletInventory {
	
		// Don't add to a full inventory
		if bullet_count >= max_bullets { return };
	
		// If we found a similar type, increase level, if not add to list
		for (var i = 0; i < ds_list_size(inventory); ++i) {
			if inventory[|i].btype == _bullet_struct.btype {
				inventory[|i].level++;
				bullet_count++;
				update_player_stats();
				return;
			}
		}
		ds_list_add(inventory, _bullet_struct);
		update_player_stats();
		bullet_count++;
	}
}