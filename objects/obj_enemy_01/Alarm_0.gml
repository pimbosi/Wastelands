

with(obj_enemy_parent)
{
          
	direction = point_direction(x,y, obj_jogador.x, obj_jogador.y );
	speed = velocidade;
		  
	if (obj_jogador.x > x)
	{  
		image_xscale = 1;  			  
	}
	else
	{  
		image_xscale = -1; 
	}
	
	depth =	-y;
	
	//resetar
	
	if(sprite_index == sprW)
	{
		sprite_index = spr;
	}

}


alarm[0] = alarmtime;