///@description ataque melee
for(var i = 1; i < 10; i++)
{
	if (keyboard_check(vk_space))
	{
		melee_up = i/10 * melee_dmg;
		//melee_dmg += melee_up;
		alarmtime[0] = 120 - (i*10);
	}
}

	var melee = instance_create_layer(x, y, "Instances", obj_weapon_melee);
	melee.image_xscale = image_xscale;
	
	if (image_xscale == -1) 
	{		
		melee.addX = -25	
	}
	
	if (image_xscale == 1)  
	{
		melee.addX = 25 
	}

