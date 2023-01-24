///@description ataque melee

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

