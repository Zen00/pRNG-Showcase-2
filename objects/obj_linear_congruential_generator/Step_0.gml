///@description 

//Change seed on demand, as these all start with the same base seed, these changes happen in the same order
if(keyboard_check_pressed(vk_space)) { seed_ = random(0xffffffff); }

//Toggle color
if(keyboard_check_pressed(vk_enter)) { color_me_ = !color_me_; }

//Kill demo
if(keyboard_check_pressed(vk_escape)) { game_end(); }

//New algorithm
if(keyboard_check_pressed(vk_shift)) {
	instance_create_layer(x,y,"Instances",obj_middle_squares_weyl);
	instance_destroy();
}

//Do a quick convergence test
attempts_++;
prng_number_ = lcg_random_float();
if(prng_number_ < probability_) { success_++; }
success_rate_ = success_/attempts_;
