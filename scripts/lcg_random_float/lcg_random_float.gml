///@func lcg_random_float()
///@desc Generates a random floating point [0,1) inside the possible period created by the variables given. This also sets the seed equal to the value returned, thus keeping state. Additionally this divides by the modulus, to return a floating point rather than a int.

with(obj_linear_congruential_generator) {
	seed_ = (multiplier_ * seed_ + increment_) % modulus_;
	return seed_ / modulus_;
}
