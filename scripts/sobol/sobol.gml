///@func sobol_random_float(counter,seed)
///@desc Returns a random float [0,1) using the Sobol Sequence (so a random number that's not really random)
///@arg counter
///@arg seed
var _counter = argument0;
var _seed = argument1;

var _ruler = ruler(++_counter);
var _dir = 1 << (31 - _ruler);
with(obj_sobol_sequence) {
	seed_ = (_seed ^ _dir) & 0xffffffff;
	return (seed_ / pow32_);
}
