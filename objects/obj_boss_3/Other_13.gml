/// @description Insert description here
// You can write your code in this editor

if esta_perto == true
{
	var melee = instance_create_layer(x, y, "Instances", obj_weapon_melee_boss);
	melee.image_xscale = image_xscale;
	
	if (image_xscale == -1) 
	{		
		melee.addX = -25	
	}
	
	if (image_xscale == 1)  
	{
		melee.addX = 25 
	}

}



