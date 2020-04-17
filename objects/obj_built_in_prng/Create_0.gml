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
window_center();

//Set font
draw_set_font(fnt_pixel);
