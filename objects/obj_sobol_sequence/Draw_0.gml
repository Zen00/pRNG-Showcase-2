///@description 

//Generate a set of random numbers from our seed across the room size
draw_set_color(c_white);
black_squares_ = 0;
white_squares_ = 0
for(var j=0; j<room_height; j++) {
	for(var i=0; i<room_width; i++) {
		prng_number_ = sobol(kill_count_[ENEMY_TYPES.bat],seed_);
		kill_count_[ENEMY_TYPES.bat]++;
		
		if(prng_number_ < probability_) {
			if(color_me_) { draw_set_color(make_color_rgb(random(255),random(255),random(255))); }
			draw_point(i,j);
			white_squares_++;
		} else {
			black_squares_++;
		}
	}
}
