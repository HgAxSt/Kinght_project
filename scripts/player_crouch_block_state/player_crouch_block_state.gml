function player_crouch_block_state(){
	
	//get input
	get_input();

	//calculate movement
	calc_movement();

	
	//blocking
	block_check();
	
	//check state

	if attack {
		state = states.ATTACK;
		image_index = 0;
	}
	
	if jump{
		jumped();
	}
	
	
	
	//apply movement
	collision();

	//apply animations
	anim();


}