///@func rotl32(num,shift_size)
///@desc Rotates a number's bits left by shift size such that the overflow comes back to the beginning (in a confined 32 bit space)
///@arg num
///@arg shift_size
var _x = argument0;
var _k = argument1;

return ((_x << _k) | (_x >> (32 - _k))) & 0xffffffff;
