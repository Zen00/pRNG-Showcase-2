///@description 

if(keyboard_check_pressed(vk_space)) { seed = random(power(2,32)); }
random_set_seed(random(power(2,32)));
var ve = random_get_seed();
black_squares = 0; white_squares = 0;


//Linear congruential generator
//var a = 25214903917; c = 11; m = power(2,18)+1; s = 1; k = 0;

//Golden Ratio Aggregator
//var _conjugate = 0.61803398875;
//var _sum = seed;

//Middle Square Weyl Sequence
var a = power(2,32); w = 0; s = 0xb5ad4eceda1ce2a9; //Check the paper for further complexity

//Sobol
//var count = 0;
//var s = random(power(2,32));

draw_set_color(c_white);
for(var j=0; j<room_height; j++) {
	for(var i=0; i<room_width; i++) {
		//LCG
		//s = ((a * s + c) % m);
		//k = s / m;
		
		//GRA
		//_sum += _conjugate;
		//_sum -= floor(_sum);
		
		//MSWS
		a *= a;
		w += s;
		a += w;
		a = (a>>16) | (a<<16);
		var _sum = a;
		_sum /= power(10,8);
		_sum -= floor(_sum);
		
		//Xorshift
		//var _sum = abs(generate_xorshift_prn());
		//_sum = real((string_insert(".",string(_sum),1))); //Obtains the first digits
		//_sum *= 0.000001; //Obtains the last digits (more random)
		//_sum -= floor(_sum);
		
		//Sobol
		//var _sum = sobol(count,s);
		
		//Built in pRNG (probably a Xorshift)
		//var _sum = random(1);
		
		if(_sum < 0.5) {
			//draw_set_color(make_color_rgb(random(255),random(255),random(255)));
			draw_point(i,j);
			white_squares++;
		} else {
			black_squares++;
		}
		count++;
	}
}
if(_sum < 0.1) { success++; }
total++;
success_rate = success/total;
if(keyboard_check_pressed(vk_delete)) { room_restart(); }

