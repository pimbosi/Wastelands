/// @description Insert description here
// You can write your code in this editor

if object_exists(target)
{
	targetX = target.x;
	targetY = target.y;
}

var _x = targetX;
var _y = targetY;

camera_set_view_pos(cam, _x- w_half, _y-h_half);

