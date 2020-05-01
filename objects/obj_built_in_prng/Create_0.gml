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
var _s = 0xE3296D171EC4A36F;
var _x = (_s * _s) & 0xffffffffffffffff;
var _y1 = (_x >> 32); //Return this
var _y2 = (_x << 32);
var _y = _y1 | _y2;
var _stop = true;