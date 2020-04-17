///@description 

//Draw a background for our text
draw_set_color(c_black);
draw_rectangle(0,0,394,256,false);

//Draw text
draw_set_color(c_yellow);
draw_text(1,1,"Linear Congruential Generator");
draw_text(1,24,@"Controls:
Enter - Toggle color
Space - New seed
Shift - New algorithm
Escape - End demo");
draw_text(1,182,"Black squares: " + string(black_squares_));
draw_text(1,206,"White squares: " + string(white_squares_));
draw_text(1,230,"Success rate: " + string(success_rate_));
