#region movimentação

boost_walk = 0

//andar com setinhas e com wasd

var left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var down = (keyboard_check(vk_down ) ||  keyboard_check(ord("S")));

inputDirection = point_direction(0,0,right-left,down-up);
inputMagnitude = (right - left != 0) || (down - up != 0);

if (inputMagnitude != 0){
	boost_walk = walkspeed*lvl*0.05
	sprite_index = spr_jogador_movimento;
}
else{
	boost_walk = 0;
	sprite_index = spr_jogador_parado;
}

hSpeed = lengthdir_x(inputMagnitude * walkspeed+boost_walk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkspeed+boost_walk, inputDirection);

PlayerCollision();

if (hSpeed > 1){
	image_xscale = 1;
}
if (hSpeed < -1){
	image_xscale = -1;
}


 #endregion

#region regeração de vida
	if hp < maxHp{
		hp += lvl*0.005
	}
#endregion