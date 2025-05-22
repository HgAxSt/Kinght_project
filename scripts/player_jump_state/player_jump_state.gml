function player_jump_state(){
	
	//get input
	get_input();

	//calculate movement
	calc_movement();

	//check state
	if on_ground(){
		if hsp != 0 state = states.WALK else state = states.IDLE;
	}

	if attack {
		state = states.ATTACK;
		image_index = 0;
	}
	
	//enable double jumps
	if jump{
		jumped();
	
	}
	
	//enable smaller jumps
	if vsp < 0 and !jump_held vsp = max(vsp, jump_held/jump_dampner);
	
	//apply movement
	collision();

	//apply animations
	anim();

}