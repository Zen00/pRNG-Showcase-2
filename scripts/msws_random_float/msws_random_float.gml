///@func msws_random_float()
///@desc Creates a random float in the [0,1) range with a period of 2^32 (period is determined by the size of the seed, but the max we can use in GML is 32 bits)

with(obj_middle_squares_weyl) {
	x_ = x_ * x_;
	w_ += s_;
	x_ += w_;
	x_ = ((x_ >> 16) | (x_ << 48));
	
	return (x_ & 0xffffffff) / pow32_;
}
