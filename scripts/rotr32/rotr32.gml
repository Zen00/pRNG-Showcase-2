///@func rotr(num,shift_size)
///@desc Rotates a numbers (int32) bits right by shift size
///@arg num
///@arg shift_size
var _x = argument0;
var _k = argument1;

return ((_x >> _k) | (_x << (32 - _k))) & 0xffffffff;
