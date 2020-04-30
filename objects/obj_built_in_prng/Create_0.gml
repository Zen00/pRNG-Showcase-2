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

random_set_seed(seed_);

//Resize the window to make it a bit easier to see the pixels
var _size = 1024;
window_set_size(_size,_size);
display_set_gui_size(_size,_size);
alarm[0] = 1;

//Set font
draw_set_font(fnt_pixel);


//Test
var _x = 0xfffeffff;
var _k = 11;
var _test1 = ((_x >> (32 - _k)) | (_x << _k)) & 0xffffffff;
var _test2 = ((_x << _k) | (_x >> (32 - _k))) & 0xffffffff;
var _test3 = ((_x << _k) | (_x >> (32 - _k))) & 0xffffffff;
var _stop = true;












/*
var _test1 = 0xfffffffe;
var _test2 = _test1 << 45;
var _test3 = _test1 >> 19;
var _test4 = _test2 | _test3;
var _test5 = _test4 & 0xffffffff;
var _test6 = (_test1 << 45) | (_test1 >> (64 - 45));
var _test7 = _test6 & 0xffffffff;
var _test8 = (_test1 << 45)  | (_test1 >> (-45 & 63));
var _test9 = _test8 & 0xffffffff;
var _test10  = _test1 >> 21;
var _test11 = _test1 << 11;
var _test12 = (_test10 | _test11) & 0xffffffff;
var _stop = true;









/*
t1 = buffer_create(8,buffer_fixed,1);
buffer_fill(t1,0,buffer_u64,0,8);
q1 = buffer_create(8,buffer_fixed,1);
buffer_fill(q1,0,buffer_u64,0,8);
deed1_ = buffer_create(8,buffer_fixed,1);
buffer_poke(deed1_,0,buffer_u64,0xE3296D171EC4A36F);
result_ = buffer_create(4,buffer_fixed,1);

x1 = buffer_read(t1,buffer_u64);
w1 = buffer_read(q1,buffer_u64);
seed1_ = buffer_read(deed1_,buffer_u64);
x1 *= x1;
w1 += seed1_;
x1 += w1;
buffer_poke(result_,0,buffer_u32,(x1 >> 32) | (x1 << 32));
x1 = buffer_read(result_,buffer_u32);
var _test = true;
