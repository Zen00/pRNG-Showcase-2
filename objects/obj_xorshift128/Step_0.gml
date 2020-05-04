///@description 

//Change seed on demand, as these all start with the same base seed, these changes happen in the same order
if(keyboard_check_pressed(vk_space)) { prng_state = [xorshift_seed_generate(),xorshift_seed_generate(),xorshift_seed_generate(),xorshift_seed_generate()]; attempts_ = 0; success_ = 0; }

//Toggle color
if(keyboard_check_pressed(vk_enter)) { color_me_ = !color_me_; }

//Kill demo
if(keyboard_check_pressed(vk_escape)) { game_end(); }

//New algorithm
if(keyboard_check_pressed(vk_shift)) {
	instance_create_layer(x,y,"Instances",obj_sobol_sequence);
	instance_destroy();
}

//Do a quick convergence test
var _loops = 1; //Choose how many attempts you want to do per frame, I wouldn't do more than a 10000
repeat(_loops) {
	attempts_++;
	prng_number_ = xorshift_random_float();
	if(prng_number_ < probability_) { success_++; }
	success_rate_ = success_/attempts_;
}
