///@func msws_random32()
///@desc Creates a random number in the possible range using the given seed (should be the full 53-bit floating point range)

with(obj_middle_squares_weyl) {
	x1 *= x1;
	w1 += seed1_;
	x1 += w1;
	return (x1 >> 32) | (x1 << 32);
}
