boost_walk = lvl*0.5;



#region movimentação

//andar com setinhas

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down );;

var horizontal = (right - left)
var vertical   = (down - up)

x += horizontal*walkspeed*boost_walk
y += vertical*walkspeed*boost_walk

 if (horizontal>0){image_xscale = 1}
 if (horizontal<0){image_xscale = -1}

//andar com wasd

var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var horizontal = (right - left)
var vertical   = (down - up)

x += horizontal*walkspeed*boost_walk
y += vertical*walkspeed*boost_walk

 if (horizontal>0){image_xscale = 1}
 if (horizontal<0){image_xscale = -1}
 
 #endregion