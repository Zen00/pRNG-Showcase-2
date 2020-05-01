///@description 

seed_ =							0x2d6a88bd;
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

//XORshift128**, generates 2^128 - 1 random numbers before repeating (sufficient for almost all applications)
//I started off trying to use XORshift128+, but found that the results from it were "streaky", meaning you'd get runs of true/false instead of a more random distribution
//Due to its complexity, it's necessarily the slowest pRNG. However in most applications the speed isn't really a factor (unless you really like generating thousands of numbers in a single frame :P)
//According to the white paper, the states should be generated randomly via a second generation algorithm (SplitMix32)
//This pRNG is sensitive (a bad state selection will give you bad convergence), so generate a bunch of random states until you find one that gives you results nearly 50/50, then use those seeds in whatever application. There's probably some rules that would govern state selection (like with the LCG), but nobody seems to have mentioned them.
prng_state = [xorshift_seed_generate(),xorshift_seed_generate(),xorshift_seed_generate(),xorshift_seed_generate()];
