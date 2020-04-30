///@func msws_random_float()
///@desc Creates a random float in the [0,1) range

with(obj_middle_squares_weyl) {
	//Prep our first number
	x1 *= x1;
	w1 += seed1_;
	x1 += w1;
	//x1 += irandom(18446744073709551616);
	var xx = x1;
	x1 = (x1 >> 32) | (x1 << 32);
	
	//Prep our second number
	x2 *= x2;
	w2 += seed2_;
	x2 += w2;
	//x2 += irandom(18446744073709551616);
	x2 = (x2 >> 32) | (x2 << 32);
	
	xx ^= x2;
	return xx / 18446744073709551616;
}
