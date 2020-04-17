//Generate a new number based on the current pRNG state
var result = rotl(global.prng_state[0] + global.prng_state[3], 23) + global.prng_state[0];

//Generate a new pRNG state for the next number
var t = global.prng_state[1] << 17;
global.prng_state[2] ^= global.prng_state[0];
global.prng_state[3] ^= global.prng_state[1];
global.prng_state[1] ^= global.prng_state[2];
global.prng_state[0] ^= global.prng_state[3];
global.prng_state[2] ^= t;
global.prng_state[3] = rotl(global.prng_state[3], 45);

return result;
