///@description ataque do machado

var axe = instance_create_layer(x,y, "Instances", obj_weapon_axe);
		axe.direction = irandom_range(45,135);
		axe.speed = 8;
		axe.gravity = 0.22;

for(var i = 0; i < 9; i++)
{
		
	axe_up = i/10 * axe_dmg;
	//axe_dmg += axe_up;
	alarmtime[1] = 170 - (i*10);

}

	
	
