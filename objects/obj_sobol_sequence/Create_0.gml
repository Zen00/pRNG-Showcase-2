///@description 

seed_ =							irandom(0xffffffff);
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

//Setup for the Sobol Sequence
enum ENEMY_TYPES {
	bat,
	snake,
	unspeakable_cosmic_entity,
	particularly_evil_snail
}

kill_count_ = [0,0,0,0];
