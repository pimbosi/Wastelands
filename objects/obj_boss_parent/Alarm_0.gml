/// @description Insert description here
// You can write your code in this editor

with(obj_boss_parent)
{
          
	direction = point_direction(x,y, obj_jogador.x, obj_jogador.y );
	speed = velocidade_boss;
		  
	if (obj_jogador.x > x)
	{  
		image_xscale = 1;  			  
	}
	else
	{  
		image_xscale = -1; 
	}
	
	depth =	-y;
	

	if(sprite_index == sprW)
	{
		sprite_index = spr;
	}

}



alarm[0] = alarmtime;



