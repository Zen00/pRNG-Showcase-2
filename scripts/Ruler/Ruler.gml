var ret = 0;
while (argument0 != 0 && (argument0 & 1) == 0)
{
    argument0 /= 2;
    ++ret;
}
return ret;
