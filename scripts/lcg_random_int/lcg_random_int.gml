///@func lcg_random_int()
///@desc Generates a random integer [) inside the possible period created by the variables given. This also sets the seed equal to the value returned, thus keeping state.

with(obj_linear_congruential_generator) {
	seed_ = (multiplier_ * seed_ + increment_) % modulus_;
	return seed_;
}
