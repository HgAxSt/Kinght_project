function jumped(){
//standard jump from the ground

if on_ground() jumps = jumps_initial;
if jumps > 0{
	state = states.JUMP;
	vsp = jump_spd;
	jumps -= 1;
	jump_dust();

}

}