/// @func rotl(x, k)
var _x = argument0;
var _k = argument1;

return (_x << _k) | (_x >> (64 - _k));