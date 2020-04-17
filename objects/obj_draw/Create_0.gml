///@description 

seed = 0;
var _size = 1024;
window_set_size(_size,_size);
display_set_gui_size(_size,_size);
white_squares = 0;
black_squares = 0;
draw_set_font(fnt_pixel);
entries = 0;
event_user(0);

global.prng_state = [0x180ec6d33cfd0aba, 0xd5a61266f0c9392c, 0xa9582618e03fc9aa, 0x39abdc4529b1661c];

loopcount = 0;

total = 0;
success = 0;
success_rate = 0;
