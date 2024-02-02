function stun_state() {
	if stun_time > 0 stun_time--;
	else state = base_state;
}	