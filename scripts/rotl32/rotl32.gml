///@func rotl(num,shift_size)
///@desc Rotates a numbers (int32) bits left by shift size
///@arg num
///@arg shift_size
var _x = argument0;
var _k = argument1;

return ((_x << (_k+32)) | (_x >> (32 - _k))) & 0xffffffff;
