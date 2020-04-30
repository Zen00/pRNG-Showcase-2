///@desc xorshift_random_float()
///@func Generate a random u32 (converted to a float) number using the XORshift engine

with(obj_xorshift128) {
	//Generate a new number based on the current pRNG state
	//The & 0xffffffff confines our numbers to the u32 space
	var _result = (prng_state[0] + prng_state[3]) & 0xffffffff;
	var t = (prng_state[1] << 9) & 0xffffffff;

	//Juggle our state around with XOR shifts for the next number
	prng_state[2] ^= prng_state[0];
	prng_state[3] ^= prng_state[1];
	prng_state[1] ^= prng_state[2];
	prng_state[0] ^= prng_state[3];
	prng_state[2] ^= t;
	prng_state[3] = rotl32(prng_state[3],11);
	
	return _result / pow32_;
}
