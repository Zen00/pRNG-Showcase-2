///@description 

seed_ =							0;
probability_ =					0.5;
prng_number_ =					0;
black_squares_ =				0;
white_squares_ =				0;
attempts_ =						0;
color_me_ =						false;
success_ =						0;
attempts_ =						0;
success_rate_ =					0;
pow32_ =						power(2,32);

//XORshift128+, generates 2^128 - 1 random numbers before repeating (sufficient for almost all applications)
//Due to its complexity, it's necessarily the slowest pRNG. However in most applications the speed isn't really a factor.
//According to the white paper, the states should be generated randomly via a second generation algorithm
prng_state = [xorshift_seed_generate(),xorshift_seed_generate(),xorshift_seed_generate(),xorshift_seed_generate()];
