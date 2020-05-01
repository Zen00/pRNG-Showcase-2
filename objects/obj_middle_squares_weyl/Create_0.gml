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


var _s = 0xE3296D171EC4A36F;
var _x = _s * _s;
var _y1 = (_x >> 32) & 0xffffffffffffffff;
var _y2 = (_x << 16) & 0xffffffffffffffff;
var _y = _y1 | _y2;
var _z = _y & 0xffffffff;
var _stop = true;





//var _x = 0xE3296D171EC4A36F;
//var _w = 0;
//var _s = 0xb5ad4eceda1ce2a9;
//var _test = 0;
//_x *= _x;
//_w += _s;
//_x += _w;
//_test = (_x >> 32) | (_x << 32);






var _stop = true;