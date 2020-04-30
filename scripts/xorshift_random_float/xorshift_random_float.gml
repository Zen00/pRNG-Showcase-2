///@desc xorshift_random_float()
///@func Generate a random int32 number using the XORshift engine

with(obj_xorshift128) {
	//Generate a new number based on the current pRNG state
	var _result = (prng_state[0] + prng_state[3]) & 0xffffffff; //Read our s64 number into a u32 buffer, then read back out to obtain a s64 number that's confined to the u32 space :shrug:
	var t = (prng_state[1] << 9) & 0xffffffff;

	//Juggle our state around with XOR shifts for the next number
	prng_state[2] ^= prng_state[0] & 0xffffffff;
	prng_state[3] ^= prng_state[1];
	prng_state[1] ^= prng_state[2];
	prng_state[0] ^= prng_state[3];
	prng_state[2] ^= t;
	prng_state[3] = rotl32(prng_state[3],11);
	
	//Bring all our values back into the u32 range
	for(var i=0;i<4;i++) {
		prng_state[i] &= 0xffffffff;
	}
	
	return _result / pow32_;
}
