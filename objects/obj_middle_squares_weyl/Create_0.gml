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

//Middle Squares Weyl Sequence variables
//x1 = buffer_create(8,buffer_fixed,1);
//buffer_seek(x1,buffer_seek_start,0);
//buffer_write(x1,buffer_u64,0x7292abe583cdd095);
//buffer_poke
x1 = 0x7292abe583cdd095;
x2 = 0x17c3717d549d57ed;
w1 = 0x6380976ee3898aa2;
w2 = 0x382e5af13f37b782;
seed1_ = 0x8ea031e94dcbed63; //Seed must be an odd 64-bit number
seed2_ = 0x1c9e7c2f87cc3a75;
