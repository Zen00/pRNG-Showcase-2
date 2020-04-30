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
