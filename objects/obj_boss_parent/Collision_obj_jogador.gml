/// @description colisão com o jogador

var _dir = point_direction(x, y, other.x, other.y);
var _knockback = 1;
var _knockbackx = lengthdir_x(_knockback, _dir);
var _knockbacky = lengthdir_y(_knockback, _dir);

other.x += _knockbackx;
other.y += _knockbacky;

