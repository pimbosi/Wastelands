// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_escolher_ataque()
{
	if alarm[1] <= 0
	{		
		var _ataque = choose(scr_boss_ataque_1, scr_boss_ataque_2);
		estado = _ataque;
		alarm[1] = 180;
	}

}

function scr_boss_ataque_1()
{
	if ataque_boss mod 2 == 1
	{
		var _dir = 0;
	}
	else if ataque_boss mod 2 == 0
	{
		var _dir = 22.5;
	}
		
		if ataque_boss > 0
		{
			if alarm[1] <= 0
			{
				repeat(8)
				{
					var _inst = instance_create_layer(x, y, "Instances", obj_projetil_boss_2);
					_inst.speed = 2;
					_inst.direction = _dir;
		
					_dir += 45;
				}
			
				ataque_boss -= 1;
				alarm[1] = 30;
			}	
		}
		else
		{
			estado = scr_boss_escolher_ataque;
			ataque_boss = 3;
		}
}

function scr_boss_ataque_2()
{
	if ataque2_boss mod 2 == 1
	{
		var _dir = 0;
	}
	else if ataque2_boss mod 2 == 0
	{
		var _dir = 22.5;
	}
		
		if ataque2_boss > 0
		{
			if alarm[1] <= 0
			{
				repeat(12)
				{
					var _inst = instance_create_layer(x,y, "Instances", obj_projetillento_boss_2);
					_inst.speed = 1;
					_inst.direction = _dir;
		
					_dir += 45;
		
				}
		
				ataque2_boss -= 1;
				alarm[1] = 30;
			}	
		}
		else
		{
			estado = scr_boss_escolher_ataque;
			ataque2_boss = 2;
		}
}