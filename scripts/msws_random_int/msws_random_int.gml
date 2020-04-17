///@func msws_random_int()
///@desc Creates a random number in the possible range using the given seed (should be the full 53-bit floating point range)

with(obj_middle_squares_weyl) {
	var xx;
	
	//Prep our first number
	x1 *= x1;
	w1 += seed1_;
	x1 += w1;
	//x1 += irandom(18446744073709551616);
	xx = x1;
	x1 = (x1 >> 32) | (x1 << 32);
	
	//Prep our second number
	x2 *= x2;
	w2 += seed2_;
	x2 += w2;
	//x2 += irandom(18446744073709551616);
	x2 = (x2 >> 32) | (x2 << 32);
	
	return xx ^ x2;
}
