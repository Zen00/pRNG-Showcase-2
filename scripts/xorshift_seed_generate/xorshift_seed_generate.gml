///@func xorshift_seed_generate32()
///@desc Generates a 32 bit seed for the XORshift generator

with(obj_xorshift128) {
	seed_ += 0x9e377c15;
	seed_ &= 0xffffffff; //Prevent seed from exiting the u32 range
	var z = seed_;
	z = (z ^ (z >> 15)) * 0xbf584769;
	z = (z ^ (z >> 13)) * 0x94d049bb;
	z ^= (z >> 15) & 0xffffffff;
	return z;
}
