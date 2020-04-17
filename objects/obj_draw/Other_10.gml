///@description 
/*
//Linear congruential generator
var a = 25214903917; c = 11; m = power(2,18); s = 1;

var _list = ds_list_create();
var _find = -1;
while(_find == -1) {
	s = ((a * s + c) % m);
	var k = s / m;
	_find = ds_list_find_index(_list,k);
	if(_find != -1) { entries = ds_list_size(_list); } else { ds_list_add(_list,k); }
}

```
static uint64_t s[4];
uint64_t next(void) {
	const uint64_t result = rotl(s[0] + s[3], 23) + s[0];
	const uint64_t t = s[1] << 17;
	
	s[2] ^= s[0];
	s[3] ^= s[1];
	s[1] ^= s[2];
	s[0] ^= s[3];
	s[2] ^= t;
	s[3] = rotl(s[3], 45);

	return result;
}
```
So in this function, we declare a size 4 array, a results variable, and a t variable. So what is 