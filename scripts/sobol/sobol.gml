var _fea = argument0;
var ruler = Ruler(1);
var dir = 1 << (31 - ruler);
var s = argument1 ^ dir;
return s / power(2,32);
