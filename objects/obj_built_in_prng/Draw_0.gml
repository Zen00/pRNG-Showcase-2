///@description 

//Generate a set of random numbers from our seed across the room size
draw_set_color(c_white);
black_squares_ = 0;
white_squares_ = 0;
for(var j=0; j<room_height; j++) {
	for(var i=0; i<room_width; i++) {
		//Built in pRNG (probably a Xorshift, based on hearse)
		prng_number_ = random(1);
		
		if(prng_number_ < probability_) {
			if(color_me_) { draw_set_color(make_color_rgb(random(255),random(255),random(255))); }
			draw_point(i,j);
			white_squares_++;
		} else {
			black_squares_++;
		}
	}
}
