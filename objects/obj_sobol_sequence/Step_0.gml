///@description 

//Change seed on demand, as these all start with the same base seed, these changes happen in the same order
if(keyboard_check_pressed(vk_space)) { seed_ = irandom(0xffffffff); attempts_ = 0; success_ = 0; kill_count_ = [0,0,0,0]; }

//Toggle color
if(keyboard_check_pressed(vk_enter)) { color_me_ = !color_me_; }

//Kill demo
if(keyboard_check_pressed(vk_escape)) { game_end(); }

//New algorithm
if(keyboard_check_pressed(vk_shift)) {
	instance_create_layer(x,y,"Instances",obj_built_in_prng);
	instance_destroy();
}

//Do a quick convergence test
var _loops = 1; //Choose how many attempts you want to do per frame, I wouldn't do more than a 10000
repeat(_loops) {
	prng_number_ = sobol_random_float(attempts_,seed_);
	attempts_++;
	if(prng_number_ < probability_) { success_++; }
	success_rate_ = success_/attempts_;
}
