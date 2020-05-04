///@func ruler(n)
///@desc Works in concert with the Sobol Sequence to determine the vector of the generator
///@arg n
var n = argument0;

var _return = 0;
while ((n != 0) && ((n & 1) == 0)) {
    n = n >> 1;
    ++_return;
}
return _return;
