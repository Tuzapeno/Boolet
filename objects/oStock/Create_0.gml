/// @description Insert description here
// You can write your code in this editor

image_speed = 0

none_stock = new create_stock(sNone, 0)
small_stock = new create_stock(sSmallestStock, 1)
stock = new create_stock(sStock, 3)

current_index = 0
stocks = array_create(3)

stocks[0] = none_stock
stocks[1] = small_stock
stocks[2] = stock

current_stock = stocks[0]

function change_stock(_incr) {
	current_index += _incr
	
	var size = array_length(stocks) - 1
	
	if current_index > size {
		current_index = 0	
	}
	else if current_index < 0 {
		current_index = size	
	}
	
	current_stock = stocks[current_index]	
}

function get_sprite() {
	return stocks[current_index].sprite
}

function get_kick() {
	return stocks[current_index].kick
}
